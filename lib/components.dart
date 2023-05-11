// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:line_icons/line_icons.dart';
// import 'package:finca/navigation.dart';
// import 'package:finca/core/colors_picker.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class BottomNavBar extends StatefulWidget {
//   BottomNavBar({Key? key}) : super(key: key);

//   get isFirst => null;

//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   late PageController _pageController;
//   int selectedIndex = 0;
//   User? loggedInUser;
//   final _auth = FirebaseAuth.instance;
//   @override
//   void getCurrentUser() async {
//     try {
//       final user = await _auth.currentUser!;
//       if (user != null) {
//         loggedInUser = user;
//       }
//     } catch (e) {
//       print(e);
//     }
//   }

//   void initState() {
//     super.initState();
//     getCurrentUser();
//     _pageController = PageController(initialPage: selectedIndex);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             child: PageView(
//               // //Scroll
//               // physics: const NeverScrollableScrollPhysics(),
//               controller: _pageController,
//               children: listOfWidget,
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               blurRadius: 20,
//               color: Colors.black.withOpacity(.1),
//             )
//           ],
//         ),
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
//             child: GNav(
//               rippleColor: Colors.grey[300]!,
//               hoverColor: Colors.grey[100]!,
//               gap: 8,
//               activeColor: kpink,
//               iconSize: 24,
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//               // ignore: prefer_const_constructors
//               duration: Duration(milliseconds: 400),
//               tabBackgroundColor: kpinkaccent,
//               color: Colors.black,
//               tabs: const [
//                 GButton(
//                   icon: LineIcons.home,
//                   text: 'Home',
//                 ),
//                 GButton(
//                   icon: LineIcons.plusCircle,
//                   text: 'Expenses',
//                 ),
//                 GButton(
//                   icon: LineIcons.creditCard,
//                   text: 'Transaction',
//                 ),
//               ],
//               selectedIndex: selectedIndex,

//               onTabChange: (int index) {
//                 setState(() {
//                   selectedIndex = index;
//                   HapticFeedback.vibrate();
//                 });
//                 _pageController.animateToPage(selectedIndex,
//                     duration: const Duration(milliseconds: 400),
//                     curve: Curves.easeOutQuad);
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
