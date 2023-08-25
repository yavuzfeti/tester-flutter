// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:tester/Screens/Home.dart';
// import 'package:tester/Screens/Login.dart';
// import 'package:tester/Screens/Notifications.dart';
// import 'package:tester/Screens/Profile.dart';
// import 'package:tester/Screens/Search.dart';
// import 'package:flutter_svg/svg.dart';
//
// class app extends StatefulWidget {
//   @override
//   _AppState createState() => _AppState();
// }
//
// class _AppState extends State<app> {
//
//   int _selectedIndex = 0;
//   late PageController _pageController;
//
//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController();
//   }
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//       _pageController.animateToPage(index, duration: Duration(milliseconds: 400), curve: Curves.easeInOut);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Tester-Flutter"),
//         ),
//         body: PageView(
//           controller: _pageController,
//           physics: NeverScrollableScrollPhysics(),
//           onPageChanged: null,
//           children: [
//             Home(),
//             Search(),
//             Notifications(),
//             Login(),
//             Profile(),
//           ],
//         ),
//         bottomNavigationBar: BottomAppBar(
//           shape: const CircularNotchedRectangle(),
//           child: Container(
//             height: 50.0,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: <Widget>[
//                 IconButton(
//                   icon: _selectedIndex == 0 ? SvgPicture.asset("lib/Assets/alt_bar/ana_sayfa_secili.svg") : SvgPicture.asset("lib/Assets/alt_bar/ana_sayfa.svg"),
//                   onPressed: () => setState(() {
//                     _selectedIndex = 0;
//                     _onItemTapped(_selectedIndex);
//                   }),
//                 ),
//                 IconButton(
//                   icon: _selectedIndex == 1 ? SvgPicture.asset("lib/Assets/alt_bar/istatistik_secili.svg") : SvgPicture.asset("lib/Assets/alt_bar/istatistik.svg"),
//                   onPressed: () => setState(() {
//                     _selectedIndex = 1;
//                     _onItemTapped(_selectedIndex);
//                   }),
//                 ),
//                 IconButton(
//                   icon: _selectedIndex == 2 ? SvgPicture.asset("lib/Assets/alt_bar/antrenman_secili.svg") : SvgPicture.asset("lib/Assets/alt_bar/antrenman.svg"),
//                   onPressed: () => setState(() {
//                     _selectedIndex = 2;
//                     _onItemTapped(_selectedIndex);
//                   }),
//                 ),
//                 IconButton(
//                   icon: _selectedIndex == 3 ? SvgPicture.asset("lib/Assets/alt_bar/diyetisyen_secili.svg") : SvgPicture.asset("lib/Assets/alt_bar/diyetisyen.svg"),
//                   onPressed: () => setState(() {
//                     _selectedIndex = 3;
//                     _onItemTapped(_selectedIndex);
//                   }),
//                 ),
//                 IconButton(
//                   icon: _selectedIndex == 4 ? SvgPicture.asset("lib/Assets/alt_bar/profil_secili.svg") : SvgPicture.asset("lib/Assets/alt_bar/profil.svg"),
//                   onPressed: () => setState(() {
//                     _selectedIndex = 4;
//                     _onItemTapped(_selectedIndex);
//                   }),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }