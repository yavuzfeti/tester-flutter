// import 'package:flutter/material.dart';
// import 'login_process.dart';
//
// class api_login extends StatefulWidget {
//   const api_login({Key? key}) : super(key: key);
//
//   @override
//   State<api_login> createState() => _api_loginState();
// }
//
// class _api_loginState extends State<api_login> {
//
//   TextEditingController kullanici_adi_controller = TextEditingController();
//   TextEditingController sifre_controller = TextEditingController();
//
//
//   Future<void> _go_home() async {
//     //login_post(kullanici_adi_controller.text,sifre_controller.text);
//     // final result = await sLogin('Entegre', '123654');
//     // print(result);
//   }
//
//   FocusNode _odak_1 = FocusNode();
//   FocusNode _odak_2 = FocusNode();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.deepOrangeAccent,
//         body: Center(
//           child: SingleChildScrollView(
//             child: Padding(
//               padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
//               child: Form(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     TextFormField(
//                       controller: kullanici_adi_controller,
//                       focusNode: _odak_1,
//                       decoration: InputDecoration(
//                           prefixIconColor: Colors.black,
//                           prefixIcon: Icon(Icons.email),
//                           filled: true,
//                           fillColor: Colors.white,
//                           hintText: "Kullanıcı adınızı giriniz",
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20),
//                           )
//                       ),
//                       style: TextStyle(fontSize: 14),
//                       onEditingComplete: () {
//                         _odak_1.unfocus();
//                         FocusScope.of(context).requestFocus(_odak_2);
//                       },
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     TextFormField(
//                       controller: sifre_controller,
//                       focusNode: _odak_2,
//                       obscureText: true,
//                       decoration: InputDecoration(
//                           prefixIconColor: Colors.black,
//                           prefixIcon: Icon(Icons.key),
//                           filled: true,
//                           fillColor: Colors.white,
//                           hintText: "Şifrenizi giriniz",
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20),
//                           )),
//                       style: TextStyle(fontSize: 14),
//                     ),
//                     ElevatedButton(
//                       onPressed: _go_home,
//                       style: ButtonStyle(
//                           foregroundColor:
//                           const MaterialStatePropertyAll(Colors.white),
//                           backgroundColor:
//                           const MaterialStatePropertyAll(Colors.black),
//                           shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(15),
//                           ))),
//                       child: const Text(style: TextStyle(fontSize: 14), "Giriş yap"),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         )
//     );
//   }
// }
