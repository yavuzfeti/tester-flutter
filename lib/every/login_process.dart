// import 'package:http/http.dart' as http;
// // // import 'dart:convert';
// // // import 'package:xml/xml.dart' as xml;
// // //
// // //
// // // class login_process
// // // {/*
// // //
// // //
// // //   final url = 'http://94.102.69.93:8090/wservis/mobilestation.asmx/SLogin';
// // //   final headers = {'Content-Type': 'text/xml;charset=UTF-8'};
// // //   final bodyXml = '''
// // // <?xml version="1.0" encoding="utf-8"?>
// // // <SLogin xmlns="http://tempuri.org/">
// // //   <userName>Entegre</userName>
// // //   <Password>123654</Password>
// // // </SLogin>
// // // ''';
// // //
// // //   final response = await http.postXml(Uri.parse(url), headers: headers, body: xml.parse(bodyXml).toXmlString());
// // //   if (response.statusCode == 200) {
// // //   final responseData = xml.parse(response.body);
// // //   // işlemler
// // //   } else {
// // //   throw Exception('HTTP isteği başarısız oldu: ${response.statusCode}');
// // //   }*/
// // //
// // // }
// // //
// // //
// // // //http://94.102.69.93:8090/wservis/mobilestation.asmx/SLogin?userName=Entegre&Password=123654
// // //
// // //
// Future<void> login_post(String username, String password) async {
//   final url = Uri.parse("http://94.102.69.93:8090/wservis/mobilestation.asmx/SLogin?");
//   final response = await http.post(url,
//     body: {
//       'userName': username,
//       'Password': password,
//     },
//   );
//   print(url);
//   print(username);
//   print(password);
//   print(response.statusCode);
//   print(url.toString()+response.body);
// }
//
// //
// // // // Future<void> login_ap(String username, String password) async {
// // // //   final url = Uri.parse('http://94.102.69.93:8090/wservis/mobilestation.asmx/SLogin?');
// // // //   final headers = {'Content-Type': 'application/soap+xml; charset=utf-8'};
// // // //   final envelope = '''
// // // //     <?xml version="1.0" encoding="utf-8"?>
// // // //     <soap12:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
// // // //         xmlns:xsd="http://www.w3.org/2001/XMLSchema"
// // // //         xmlns:soap12="http://www.w3.org/2003/05/soap-envelope">
// // // //       <soap12:Body>
// // // //         <SLogin xmlns="http://tempuri.org/">
// // // //           <username>$username</username>
// // // //           <password>$password</password>
// // // //         </SLogin>
// // // //       </soap12:Body>
// // // //     </soap12:Envelope>
// // // //   ''';
// // // //
// // // //   final response = await http.post(url, headers: headers, body: envelope);
// // // //   final document = xml.XmlDocument.parse(response.body);
// // // //   final node = document.findAllElements('SLoginResult').single;
// // // //   final result = node.text;
// // // //
// // // //   // do something with the login result
// // // //
// // // //   print(url.toString());
// // // //   print(username.toString());
// // // //   print(password.toString());
// // // //   print(response.statusCode);
// // // //   print(url.toString()+response.body.toString());
// // // //   print(result.toString());
// // // // }
// //
// //
// // import 'package:http/http.dart' as http;
// // import 'package:xml/xml.dart' as xml;
// //
// // Future<String> sLogin(String username, String password) async {
// //   final envelope = xml.XmlDocument.parse('''
// //     <?xml version="1.0" encoding="utf-8"?>
// //     <soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
// //                    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
// //                    xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
// //       <soap:Body>
// //         <SLogin xmlns="http://tempuri.org/">
// //           <username>$username</username>
// //           <password>$password</password>
// //         </SLogin>
// //       </soap:Body>
// //     </soap:Envelope>
// //   ''');
// //
// //   final response = await http.post(
// //     Uri.parse('http://94.102.69.93:8090/wservis/mobilestation.asmx/SLogin?'),
// //     headers: {'Content-Type': 'text/xml; charset=utf-8', 'SOAPAction': 'http://tempuri.org/SLogin'},
// //     body: envelope.toXmlString(pretty: true, indent: '  '),
// //   );
// //
// //   final document = xml.XmlDocument.parse(response.body);
// //   final result = document.findAllElements('SLoginResult').single.text;
// //   print(result);
// //
// //   return result;
// // }
// //




