// import 'package:flutter/material.dart';
//
// class Login extends StatefulWidget {
//   @override
//   State<Login> createState() => _LoginState();
// }
//
// class _LoginState extends State<Login> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(50.0),
//         child:Form(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 TextField(
//                   decoration: InputDecoration(
//                     labelText: "E-postanızı giriniz",
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(50),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 20,),
//                 TextField(
//                   decoration: InputDecoration(
//                     labelText: "Şifrenizi giriniz",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: const [
//                     TextButton(
//                       onPressed: null, //Buraya şifremi unuttum fonksiyonu gelecek
//                       child: Text("Şifremi unuttum"),
//                   )],
//                 ),
//                 SizedBox(
//                   width: 125,
//                   height: 50,
//                   child: ElevatedButton(
//                       onPressed: null,
//                   style: ButtonStyle(
//                     foregroundColor: const MaterialStatePropertyAll(Colors.amber),//butona renk verilecek
//                     backgroundColor: const MaterialStatePropertyAll(Colors.amber),
//                     shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                       side: const BorderSide(color: Colors.amber), // Buraya buton kenar rengi verilecek
//                     ))
//                   ), //Buraya buton fonksiyonu atanacak
//                       child: const Text("Giriş yap"),),
//                 )
//               ],
//             ),
//           ),
//         ),
//     );
//   }
// }
