// import 'package:flutter/material.dart';
// import 'oss_licenses.dart';
//
// ScrollController _scrollController = ScrollController();
//
// class Licences extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Scrollbar(
//         //thumbVisibility: false,
//         isAlwaysShown: true,
//         thickness: 10,
//         radius: Radius.circular(15),
//         controller: _scrollController,
//         scrollbarOrientation: ScrollbarOrientation.right,
//         child: ListView.builder(
//                 controller: _scrollController,
//                   itemCount: ossLicenses.length,
//                   itemBuilder: (context, index) {
//                     final package = ossLicenses[index];
//                     return ListTile(
//                       title: Container(
//                         padding: EdgeInsets.all(20),
//                         decoration: BoxDecoration(
//                           color: Colors.amber,
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                         child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'Paket Adı: ${package.name}',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(height: 8),
//                               Text(
//                                 'Tanımı: ${package.description}',
//                               ),
//                               SizedBox(height: 8),
//                               if (package.homepage != null)
//                                 Text(
//                                   'Adresi: ${package.homepage}',
//                                 ),
//                               if (package.repository != null)
//                                 Text(
//                                   'Deposu: ${package.repository}',
//                                 ),
//                               SizedBox(height: 8),
//                               Text(
//                                 'Yazarlar: ${package.authors.join(', ')}',
//                               ),
//                               SizedBox(height: 8),
//                               Text(
//                                 'Versiyon: ${package.version}',
//                               ),
//                               SizedBox(height: 8),
//                               Text(
//                                 'Lisans: ${package.license ?? "Unknown"}',
//                               ),
//                               SizedBox(height: 8),
//                               if (package.isMarkdown != null)
//                               Text(
//                                 '${package.isMarkdown}',
//                               ),
//                               SizedBox(height: 8),
//                               if (package.isSdk != null)
//                               Text(
//                                 '${package.isSdk}',
//                               ),
//                               SizedBox(height: 8),
//                               if (package.isDirectDependency != null)
//                               Text(
//                                 '${package.isDirectDependency}',
//                               ),
//                             ]),
//                       ),
//                     );
//                   }),
//       ),
//     );
//   }
// }
