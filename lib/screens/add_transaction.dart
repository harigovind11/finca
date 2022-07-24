import 'package:finca/db_helper.dart';
import 'package:finca/screens/transaction_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:finca/colors_picker.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:finca/components.dart';
import 'home_screen.dart';

class AddTransaction extends StatefulWidget {
  const AddTransaction({Key? key}) : super(key: key);

  @override
  _AddTransactionState createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  final _auth = FirebaseAuth.instance;
  late User loggedInUser;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = _auth.currentUser!;
      loggedInUser = user;
      print(loggedInUser.email);
    } catch (e) {
      print(e);
    }
  }

  DateTime selectedDate = DateTime.now();
  int? amount;
  String note = "Expence";
  String type = "Income";

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

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffe2e7ef),
        //
        body: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: ListView(
              padding: EdgeInsets.all(
                18.0,
              ),
              children: [
                Text(
                  "\nAdd Transaction",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: kblueGrey,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),

                //
                SizedBox(
                  height: 20.0,
                ),
                //
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: kfincaPink,
                        borderRadius: BorderRadius.circular(
                          16.0,
                        ),
                      ),
                      padding: EdgeInsets.all(
                        12.0,
                      ),
                      child: Icon(
                        Icons.attach_money,
                        size: 24.0,
                        // color: Colors.grey[700],
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "0",
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          fontFamily: 'MusticaPro',
                          fontSize: 24.0,
                        ),
                        onChanged: (val) {
                          try {
                            amount = int.parse(val);
                          } catch (e) {
                            // show Error
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: Colors.red,
                                duration: Duration(
                                  seconds: 2,
                                ),
                                content: Row(
                                  children: [
                                    Icon(
                                      Icons.info_outline,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 6.0,
                                    ),
                                    Text(
                                      "Enter only Numbers as Amount",
                                      style: TextStyle(
                                        fontFamily: 'MusticaPro',
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                        },
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        keyboardType: TextInputType.number,
                        // textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                //
                SizedBox(
                  height: 20.0,
                ),
                //
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: kfincaPink,
                        borderRadius: BorderRadius.circular(
                          16.0,
                        ),
                      ),
                      padding: EdgeInsets.all(
                        12.0,
                      ),
                      child: Icon(
                        Icons.description,
                        size: 24.0,
                        // color: Colors.grey[700],
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Category",
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          fontFamily: 'MusticaPro',
                          fontSize: 20.0,
                        ),
                        onChanged: (value) {
                          note = value;
                        },
                      ),
                    ),
                  ],
                ),
                //
                SizedBox(
                  height: 20.0,
                ),
                //
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: kfincaPink,
                        borderRadius: BorderRadius.circular(
                          16.0,
                        ),
                      ),
                      padding: EdgeInsets.all(
                        12.0,
                      ),
                      child: Icon(
                        Icons.analytics,
                        size: 24.0,
                        // color: Colors.grey[700],
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    ChoiceChip(
                      label: Text(
                        "Income",
                        style: TextStyle(
                          fontFamily: 'MusticaPro',
                          fontSize: 18.0,
                          color:
                              type == "Income" ? Colors.black : Colors.blueGrey,
                        ),
                      ),
                      selectedColor: Colors.white,
                      onSelected: (val) {
                        if (val) {
                          setState(() {
                            type = "Income";
                            if (note.isEmpty || note == "Expense") {
                              note = 'Income';
                            }
                          });
                        }
                      },
                      selected: type == "Income" ? true : false,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    ChoiceChip(
                      label: Text(
                        "Expense",
                        style: TextStyle(
                          fontFamily: 'MusticaPro',
                          fontSize: 18.0,
                          color: type == "Expense"
                              ? Colors.black
                              : Colors.blueGrey,
                        ),
                      ),
                      selectedColor: Colors.white,
                      onSelected: (val) {
                        if (val) {
                          setState(() {
                            type = "Expense";

                            if (note.isEmpty || note == "Income") {
                              note = 'Expense';
                            }
                          });
                        }
                      },
                      selected: type == "Expense" ? true : false,
                    ),
                  ],
                ),
                //
                SizedBox(
                  height: 20.0,
                ),
                //
                SizedBox(
                  height: 50.0,
                  child: TextButton(
                    onPressed: () {
                      _selectDate(context);
                      //
                      // to make sure that no keyboard is shown after selecting Date
                      FocusScope.of(context).unfocus();
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        EdgeInsets.zero,
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: kfincaPink,
                            borderRadius: BorderRadius.circular(
                              16.0,
                            ),
                          ),
                          padding: EdgeInsets.all(
                            12.0,
                          ),
                          child: Icon(
                            Icons.date_range,
                            size: 24.0,
                            // color: Colors.grey[700],
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Text(
                          "${selectedDate.day} ${months[selectedDate.month - 1]}",
                          style: TextStyle(
                            fontFamily: 'MusticaPro',
                            fontSize: 20.0,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //
                SizedBox(
                  height: 20.0,
                ),
                //
                SizedBox(
                  height: 50.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(5),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    onPressed: () {
                      if (amount != null) {
                        DbHelper dbHelper = DbHelper();
                        dbHelper.addData(amount!, selectedDate, type, note);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.greenAccent,
                            content: Text(
                              "Sucessfully Added",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontFamily: 'musticaPro'),
                            ),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.redAccent,
                            content: Text(
                              "Please enter a valid Amount !",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontFamily: 'MusticaPro',
                              ),
                            ),
                          ),
                        );
                      }
                    },
                    child: Text(
                      "Add",
                      style: TextStyle(
                        fontFamily: 'MusticaPro',
                        color: Colors.blueGrey,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ]),
        ));
  }
}
