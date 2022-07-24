import 'package:finca/colors_picker.dart';
import 'package:finca/db_helper.dart';
import 'package:finca/screens/add_transaction.dart';
import 'package:finca/model/transaction.dart';
import 'package:finca/widgets/confirm_dialog.dart';
import 'package:finca/widgets/info_snackbar.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:finca/colors_picker.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  _TransactionScreenState createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  //
  late Box box;
  late SharedPreferences preferences;
  DbHelper dbHelper = DbHelper();
  Map? data;
  int totalBalance = 0;
  int totalIncome = 0;
  int totalExpense = 0;
  List<FlSpot> dataSet = [];
  DateTime today = DateTime.now();
  DateTime now = DateTime.now();
  int index = 1;

  List<String> months = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec"
  ];

  @override
  void initState() {
    super.initState();
    getPreference();
    box = Hive.box('money');
  }

  getPreference() async {
    preferences = await SharedPreferences.getInstance();
  }

  Future<List<TransactionModel>> fetch() async {
    if (box.values.isEmpty) {
      return Future.value([]);
    } else {
      // return Future.value(box.toMap());
      List<TransactionModel> items = [];
      box.toMap().values.forEach((element) {
        // print(element);
        items.add(
          TransactionModel(
            element['amount'] as int,
            element['note'],
            element['date'] as DateTime,
            element['type'],
          ),
        );
      });
      return items;
    }
  }
  //

  List<FlSpot> getPlotPoints(List<TransactionModel> entireData) {
    dataSet = [];
    List tempdataSet = [];

    for (TransactionModel item in entireData) {
      if (item.date.month == today.month && item.type == "Expense") {
        tempdataSet.add(item);
      }
    }
    //
    // Sorting the list as per the date
    tempdataSet.sort((a, b) => a.date.day.compareTo(b.date.day));
    //
    for (var i = 0; i < tempdataSet.length; i++) {
      dataSet.add(
        FlSpot(
          tempdataSet[i].date.day.toDouble(),
          tempdataSet[i].amount.toDouble(),
        ),
      );
    }
    return dataSet;
  }

  getTotalBalance(List<TransactionModel> entireData) {
    totalBalance = 0;
    totalIncome = 0;
    totalExpense = 0;
    for (TransactionModel data in entireData) {
      if (data.date.month == today.month) {
        if (data.type == "Income") {
          totalBalance += data.amount;
          totalIncome += data.amount;
        } else {
          totalBalance -= data.amount;
          totalExpense += data.amount;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: 0.0,
      // ),
      backgroundColor: Colors.grey[200],

      body: FutureBuilder<List<TransactionModel>>(
        future: fetch(),
        builder: (context, snapshot) {
          // print(snapshot.data);
          if (snapshot.hasError) {
            return Center(
              child: Text(
                "Oopssss !!! There is some error !",
                style: TextStyle(
                  fontFamily: 'musticaPro',
                  fontSize: 24.0,
                ),
              ),
            );
          }
          if (snapshot.hasData) {
            if (snapshot.data!.isEmpty) {
              return Center(
                child: Text(
                  "You haven't added Any Data !",
                  style: TextStyle(
                    fontFamily: 'musticaPro',
                    fontSize: 24.0,
                  ),
                ),
              );
            }
            //
            getTotalBalance(snapshot.data!);
            getPlotPoints(snapshot.data!);
            return ListView(
              children: [
                //
                Padding(
                  padding: const EdgeInsets.all(
                    12.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  32.0,
                                ),
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    Colors.red,
                                    Colors.blueAccent,
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Recent Transactions",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: kblueGrey,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                selectMonth(),
                //
                //
                Padding(
                  padding: const EdgeInsets.all(
                    12.0,
                  ),
                  child: Text(
                    "${months[today.month - 1]} ${today.year}",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: kblueGrey,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                  ),
                ),

                //
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: snapshot.data!.length + 1,
                  itemBuilder: (context, index) {
                    TransactionModel dataAtIndex;
                    try {
                      // dataAtIndex = snapshot.data![index];
                      dataAtIndex = snapshot.data![index];
                    } catch (e) {
                      // deleteAt deletes that key and value,
                      // hence makign it null here., as we still build on the length.
                      return Container();
                    }

                    if (dataAtIndex.date.month == today.month) {
                      if (dataAtIndex.type == "Income") {
                        return incomeTile(
                          dataAtIndex.amount,
                          dataAtIndex.note,
                          dataAtIndex.date,
                          index,
                        );
                      } else {
                        return expenseTile(
                          dataAtIndex.amount,
                          dataAtIndex.note,
                          dataAtIndex.date,
                          index,
                        );
                      }
                    } else {
                      return Container();
                    }
                  },
                ),
                //
                SizedBox(
                  height: 60.0,
                ),
              ],
            );
          } else {
            return Text(
              "Loading...",
            );
          }
        },
      ),
    );
  }

//
//
//
// Widget
//
//

  Widget cardIncome(String value) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.circular(
              20.0,
            ),
          ),
          padding: EdgeInsets.all(
            6.0,
          ),
          child: Icon(
            Icons.arrow_downward,
            size: 28.0,
            color: Colors.green[700],
          ),
          margin: EdgeInsets.only(
            right: 8.0,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Income",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
                color: Colors.white70,
              ),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget cardExpense(String value) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.circular(
              20.0,
            ),
          ),
          padding: EdgeInsets.all(
            6.0,
          ),
          child: Icon(
            Icons.arrow_upward,
            size: 28.0,
            color: Colors.red[700],
          ),
          margin: EdgeInsets.only(
            right: 8.0,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Expense",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'musticaPro',
                fontSize: 14.0,
                color: Colors.white70,
              ),
            ),
            Text(
              value,
              style: TextStyle(
                fontFamily: 'musticaPro',
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget expenseTile(int value, String note, DateTime date, int index) {
    return InkWell(
      splashColor: kfincaPink,
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          deleteInfoSnackBar,
        );
      },
      onLongPress: () async {
        bool? answer = await showConfirmDialog(
          context,
          "WARNING",
          "This will delete this record. This action is irreversible. Do you want to continue ?",
        );
        if (answer != null && answer) {
          await dbHelper.deleteData(index);
          setState(() {});
        }
      },
      child: Container(
        padding: const EdgeInsets.all(18.0),
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Color(0xffced4eb),
          borderRadius: BorderRadius.circular(
            8.0,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_circle_up_outlined,
                          size: 28.0,
                          color: Colors.red[700],
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          "Expense",
                          style: TextStyle(
                            fontFamily: 'musticaPro',
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),

                    //
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        "${date.day} ${months[date.month - 1]} ",
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "- $value",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    //
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        note,
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget incomeTile(int value, String note, DateTime date, int index) {
    return InkWell(
      splashColor: kfincaPink,
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          deleteInfoSnackBar,
        );
      },
      onLongPress: () async {
        bool? answer = await showConfirmDialog(
          context,
          "WARNING",
          "This will delete this record. This action is irreversible. Do you want to continue ?",
        );

        if (answer != null && answer) {
          await dbHelper.deleteData(index);
          setState(() {});
        }
      },
      child: Container(
        padding: const EdgeInsets.all(18.0),
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Color(0xffced4eb),
          borderRadius: BorderRadius.circular(
            8.0,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_circle_down_outlined,
                      size: 28.0,
                      color: Colors.green[700],
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      "Credit",
                      style: TextStyle(
                        fontFamily: 'musticaPro',
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                //
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    "${date.day} ${months[date.month - 1]} ",
                    style: TextStyle(
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                //
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "+ $value",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontFamily: 'musticaPro',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                //
                //
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    note,
                    style: TextStyle(
                      fontFamily: 'musticaPro',
                      color: Colors.grey[800],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget selectMonth() {
    return Padding(
      padding: EdgeInsets.all(
        8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                index = 3;
                today = DateTime(now.year, now.month - 2, today.day);
              });
            },
            child: Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8.0,
                ),
                color: index == 3 ? kfincaPink : Colors.white,
              ),
              alignment: Alignment.center,
              child: Text(
                months[now.month - 3],
                style: TextStyle(
                  fontFamily: 'musticaPro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: index == 3 ? Colors.white : kfincaPink,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                index = 2;
                today = DateTime(now.year, now.month - 1, today.day);
              });
            },
            child: Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8.0,
                ),
                color: index == 2 ? kfincaPink : Colors.white,
              ),
              alignment: Alignment.center,
              child: Text(
                months[now.month - 2],
                style: TextStyle(
                  fontFamily: 'musticaPro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: index == 2 ? Colors.white : kfincaPink,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                index = 1;
                today = DateTime.now();
              });
            },
            child: Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8.0,
                ),
                color: index == 1 ? kfincaPink : Colors.white,
              ),
              alignment: Alignment.center,
              child: Text(
                months[now.month - 1],
                style: TextStyle(
                  fontFamily: 'musticaPro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: index == 1 ? Colors.white : kfincaPink,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
