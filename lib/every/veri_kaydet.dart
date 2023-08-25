// import 'package:flutter/material.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
//
// class veri_kaydet extends StatefulWidget {
//   const veri_kaydet({Key? key}) : super(key: key);
//
//   @override
//   State<veri_kaydet> createState() => _veri_kaydetState();
// }
//
// class _veri_kaydetState extends State<veri_kaydet> {
//
//   final storage = FlutterSecureStorage();
//   final _base_URL_Controller = TextEditingController();
//   final _lisans_no_Controller = TextEditingController();
//
//   Future<void> _exit_api_edit()
//   async {
//     String? _base_URL = _base_URL_Controller.text;
//     String? _lisans_no = _lisans_no_Controller.text;
//     await storage.write(key: "_base_URL", value: _base_URL);
//     await storage.write(key: "_lisans_no", value: _lisans_no);
//   }
//
//   Future<void> _goster()
//   async {
//     String? _baseURL = await storage.read(key: '_base_URL');
//     print(_baseURL);
//     String? _lisans_no = await storage.read(key: '_lisans_no');
//     print(_lisans_no);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: Colors.deepOrange,
//           title: Text("Veri Kaydetme Sayfası"),
//         ),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Form(
//                 child: Column(
//                   children: [
//                     TextFormField(
//                       controller: _base_URL_Controller,
//                       autofocus: true,
//                       decoration: InputDecoration(
//                           labelText: "Aktivasyon için verilen URL'yi giriniz",
//                           border: OutlineInputBorder(
//                           ),
//                           focusedBorder: OutlineInputBorder()
//                       ),
//                     ),
//                     SizedBox(height: 10,),
//                     TextFormField(
//                       controller: _lisans_no_Controller,
//                       decoration: InputDecoration(
//                           labelText: "Lisans NO",
//                           border: OutlineInputBorder(
//                           ),
//                           focusedBorder: OutlineInputBorder()
//                       ),
//                     ),
//                     SizedBox(height: 10,),
//                     TextFormField(
//                       decoration: InputDecoration(
//                           labelText: "Başında '0' olmadan telefon numaranızı giriniz",
//                           border: OutlineInputBorder(
//                           ),
//                           focusedBorder: OutlineInputBorder()
//                       ),
//                     ),
//                     SizedBox(height: 10,),
//                     TextFormField(
//                       decoration: InputDecoration(
//                           labelText: "Kullanıcı adınızı giriniz",
//                           border: OutlineInputBorder(
//                           ),
//                           focusedBorder: OutlineInputBorder()
//                       ),
//                     ),
//                     SizedBox(height: 10,),
//                     TextFormField(
//                       decoration: InputDecoration(
//                           labelText: "Şifrenizi giriniz",
//                           border: OutlineInputBorder(
//                           ),
//                           focusedBorder: OutlineInputBorder()
//                       ),
//                     ),
//                     SizedBox(height: 10,),
//                     TextFormField(
//                       decoration: InputDecoration(
//                           labelText: "Şifrenizi giriniz",
//                           border: OutlineInputBorder(
//                           ),
//                           focusedBorder: OutlineInputBorder()
//                       ),
//                     ),
//                     SizedBox(height: 10,),
//                     ElevatedButton(
//                         style: ButtonStyle(
//                             foregroundColor:
//                             const MaterialStatePropertyAll(Colors.white),
//                             backgroundColor:
//                             const MaterialStatePropertyAll(Colors.orangeAccent),
//                             shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15),
//                             ))),
//                         onPressed: _exit_api_edit,
//                         child: Text("Kaydet")),
//                     ElevatedButton(
//                         style: ButtonStyle(
//                             foregroundColor:
//                             const MaterialStatePropertyAll(Colors.white),
//                             backgroundColor:
//                             const MaterialStatePropertyAll(Colors.orangeAccent),
//                             shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(15),
//                             ))),
//                         onPressed: _goster,
//                         child: Text("Göster"))
//                   ],
//                 )
//             ),
//           ),
//         )
//     );
//   }
// }
