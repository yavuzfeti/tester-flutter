// import 'package:flutter/material.dart';
// import 'package:tester/Screens/Home.dart';
// import 'package:tester/Screens/Notifications.dart';
// import 'package:tester/Screens/Profile.dart';
// import 'package:tester/Screens/Search.dart';
//
// class MainPage extends StatefulWidget {
//   @override
//   State<MainPage> createState() => _MainPageState();
// }
//
// class _MainPageState extends State<MainPage> {
//   int _pageIndex = 0;
//   bool _isSearch = false;
//   TextEditingController _searchController = TextEditingController();
//
//   final List<Widget> _pageOptions = [
//     Home(),
//     Search(),
//     Notifications(),
//     Profile()
//   ];
//
//   void _pageChange(int index) {
//     setState(() {
//       _pageIndex = index;
//     });
//   }
//
//   void _search() {
//     setState(() {
//       _isSearch = !_isSearch;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context)
//   {
//     return Scaffold(
//       appBar: AppBar(
//         title: _isSearch
//             ? TextField(
//                 controller: _searchController,
//                 decoration: InputDecoration(
//                     labelText: "Ara",
//                 ),
//               )
//             : Text("Fitness Center"),
//         actions: [
//           _isSearch
//               ? IconButton(
//                   onPressed: () {
//                     _search();
//                   },
//                   icon: Icon(Icons.close))
//               : IconButton(
//                   onPressed: () {
//                     _search();
//                   },
//                   icon: Icon(Icons.search)),
//           IconButton(
//               onPressed: () => _pageChange(2), icon: Icon(Icons.notifications_rounded)),
//           IconButton(
//               onPressed: () => _pageChange(3),
//               icon: Icon(Icons.account_circle)),
//         ],
//       ),
//       body: _pageOptions[_pageIndex],
//       bottomNavigationBar: BottomAppBar(
//         shape: const CircularNotchedRectangle(),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: <Widget>[
//             IconButton(
//               icon: _pageIndex == 0
//                   ? const Icon(Icons.home)
//                   : const Icon(Icons.home_outlined),
//               onPressed: () => _pageChange(0),
//             ),
//             IconButton(
//               icon: _pageIndex == 1
//                   ? const Icon(Icons.saved_search)
//                   : const Icon(Icons.search),
//               onPressed: () => _pageChange(1),
//             ),
//             IconButton(
//               icon: _pageIndex == 2
//                   ? const Icon(Icons.notifications)
//                   : const Icon(Icons.notifications_outlined),
//               onPressed: () => _pageChange(2),
//             ),
//             IconButton(
//               icon: _pageIndex == 3
//                   ? const Icon(Icons.account_circle)
//                   : const Icon(Icons.account_circle_outlined),
//               onPressed: () => _pageChange(3),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
