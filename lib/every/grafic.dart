// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
//
// class graphic_slider extends StatelessWidget {
//
//   final List<Widget> graph =
//   [
//     bir(),
//     iki(),
//     uc(),
//   ];
//
//   @override
//   Widget build(BuildContext context)
//   {
//     return Scaffold(
//       body: Center(
//         child: CarouselSlider(
//           items: graph,
//           options: CarouselOptions(
//             autoPlay: true,
//             aspectRatio: 2.0,
//             enlargeCenterPage: true,
//             pageSnapping: false,
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// ///birinci sayfa
//
// class bir extends StatefulWidget {
//   const bir({Key? key}) : super(key: key);
//
//   @override
//   State<bir> createState() => _birState();
// }
//
// class _birState extends State<bir>{
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     print("1 İNİTİALİZE çalıştı");
//   }
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     print("1 DİSPOSE çalıştı");
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Text("birinci sayfa");
//   }
// }
// ///ikinci sayfa
//
// class iki extends StatefulWidget {
//   const iki({Key? key}) : super(key: key);
//
//   @override
//   State<iki> createState() => _ikiState();
// }
//
// class _ikiState extends State<iki>{
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     print("2 İNİTİALİZE çalıştı");
//   }
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     print("2 DİSPOSE çalıştı");
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Text("ikinci sayfa");
//   }
// }
// ///ucuncu sayfa
//
// class uc extends StatefulWidget {
//   const uc({Key? key}) : super(key: key);
//
//   @override
//   State<uc> createState() => _ucState();
// }
//
// class _ucState extends State<uc> {
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     print("3 İNİTİALİZE çalıştı");
//   }
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     print("3 DİSPOSE çalıştı");
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Text("üçüncü sayfa");
//   }
// }
//
