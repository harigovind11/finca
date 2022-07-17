import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userName = "Harigovind";
  double balance = 50000;
  double income = 4000;
  double expense = 500;
  double montlyLimit = 10000;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hi!  $userName',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                    const CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage('assets/logo_finca.png'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(17),
                child: Column(
                  children: [
                    Container(
                      height: 250,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Color(0xFFF7F7F7),
                          borderRadius: BorderRadius.circular(30),
                          // border: Border.all(color: Colors.black),
                          boxShadow: [
                            BoxShadow(
                              blurStyle: BlurStyle.solid,
                              blurRadius: 1.5,
                              color: Color.fromARGB(255, 145, 145, 145),
                              offset: Offset(0, 0),
                            )
                          ]),
                      child: Center(
                        child: Column(
                          children: [
                            const Text(
                              'Balance',
                              style: TextStyle(
                                fontFamily: 'MusticaPro',
                                color: Colors.black,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '₹ $balance',
                              style: TextStyle(
                                fontFamily: 'MusticaPro',
                                color: Colors.black,
                                fontSize: 65,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              print('Income pressed');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFFF7F7F7),
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      blurStyle: BlurStyle.solid,
                                      blurRadius: 1.5,
                                      color: Color.fromARGB(255, 145, 145, 145),
                                      offset: Offset(0, 0),
                                    )
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    IconButton(
                                        splashRadius: 1,
                                        color: Colors.green,
                                        onPressed: () {},
                                        icon: const FaIcon(
                                            FontAwesomeIcons.chartLine)),
                                    const Text(
                                      'Income',
                                      style: TextStyle(
                                        fontFamily: 'MusticaPro',
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '+ ₹$income',
                                      style: TextStyle(
                                        fontFamily: 'MusticaPro',
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              print('Expense pressed');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFFF7F7F7),
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      blurStyle: BlurStyle.solid,
                                      blurRadius: 1.5,
                                      color: Color.fromARGB(255, 145, 145, 145),
                                      offset: Offset(0, 0),
                                    )
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    IconButton(
                                        splashRadius: 1,
                                        color: Colors.red,
                                        onPressed: () {},
                                        icon: const FaIcon(
                                            FontAwesomeIcons.chartLine)),
                                    const Text(
                                      'Expense',
                                      style: TextStyle(
                                        fontFamily: 'MusticaPro',
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '- ₹$expense',
                                      style: TextStyle(
                                        fontFamily: 'MusticaPro',
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 80,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Color(0xFFF7F7F7),
                          borderRadius: BorderRadius.circular(60),
                          // border: Border.all(color: Colors.black),
                          boxShadow: [
                            BoxShadow(
                              blurStyle: BlurStyle.solid,
                              blurRadius: 1.5,
                              color: Color.fromARGB(255, 145, 145, 145),
                              offset: Offset(0, 0),
                            )
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            LineIcons.exclamationTriangle,
                            color: Colors.yellow,
                            size: 40,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Monthly spending limit',
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal)),
                              ),
                              Text(
                                '₹ $montlyLimit',
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // CalendarAppBar(
      //   onDateChanged: (value) => print(value),
      //   firstDate: DateTime.now().subtract(Duration(days: 140)),
      //   lastDate: DateTime.now(),
      // ),
    );
  }
}
