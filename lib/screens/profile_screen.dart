import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';
import 'package:finca/colors_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:finca/components.dart';
import 'package:finca/constants.dart';

class ProfileScreen extends StatefulWidget {
  static const String id = 'profile_screen';

  const ProfileScreen({Key? key}) : super(key: key);
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          body: Padding(
            padding: const EdgeInsets.only(top: 26.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Profile',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: kblueGrey,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [kfincaPink, kpink],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                stops: [0.4, 1],
                                tileMode: TileMode.repeated,
                              ),
                              color: Color(0xFFF7F7F7),
                              borderRadius: BorderRadius.circular(20),
                              // border: Border.all(color: Colors.black38),
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
                                Text(
                                  'name',
                                  style: TextStyle(
                                    fontFamily: 'MusticaPro',
                                    color: kblueGrey,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '$loggedInUser!.email',
                                  style: TextStyle(
                                    fontFamily: 'MusticaPro',
                                    color: Colors.black,
                                    fontSize: 10,
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
                                          color: Color.fromARGB(
                                              255, 145, 145, 145),
                                          offset: Offset(0, 0),
                                        )
                                      ]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        IconButton(
                                            splashRadius: 1,
                                            color: Colors.greenAccent,
                                            onPressed: () {},
                                            icon: const FaIcon(
                                                FontAwesomeIcons.chartLine)),
                                        const Text(
                                          '',
                                          style: TextStyle(
                                            fontFamily: 'MusticaPro',
                                            color: kblueGrey,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          '',
                                          style: TextStyle(
                                            fontFamily: 'MusticaPro',
                                            color: Colors.greenAccent,
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
                                          color: Color.fromARGB(
                                              255, 145, 145, 145),
                                          offset: Offset(0, 0),
                                        )
                                      ]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        IconButton(
                                            splashRadius: 1,
                                            color: Colors.redAccent,
                                            onPressed: () {},
                                            icon: const FaIcon(
                                                FontAwesomeIcons.chartLine)),
                                        const Text(
                                          '',
                                          style: TextStyle(
                                            fontFamily: 'MusticaPro',
                                            color: kblueGrey,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          '',
                                          style: TextStyle(
                                            fontFamily: 'MusticaPro',
                                            color: Colors.redAccent,
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
                              // border: Border.all(color: Colors.black38),
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
                                            color: Colors.black38,
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal)),
                                  ),
                                  Text(
                                    '',
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Colors.black38,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GetData extends StatelessWidget {
  @override
  final _auth = FirebaseAuth.instance;
  Widget build(BuildContext context) {
    CollectionReference student = FirebaseFirestore.instance.collection('user');

    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('user').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) {
          print('no data');
        }

        return ListView(
          children: snapshot.data!.docs.map((document) {
            return Container(
              child: Center(child: Text(document['name'])),
            );
          }).toList(),
        );
      },
    );
  }
}
