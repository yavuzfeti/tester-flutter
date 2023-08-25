// import 'package:dio/dio.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
//
// ///NETWORK SERVİSLERİ SAYFASI
//
// //Tüm hafıza işlemleri için tanımlama
// final storage = FlutterSecureStorage();
//
// final dio = Dio();
// var baseUrl;
//
// Future<void> base_Url()
// async {
//   //base url hafızada yok ise entegrenib defaultu tanımlıyor
//   baseUrl = await storage.read(key: "base_URL");
//   baseUrl ??= "http://94.102.69.93:8090/wservis/mobilestation.asmx/";
// }
//
// class process
// {
//   process(this.url, [this.sorgu_parametresi, this.veri]);
//
//   final String url;
//   final Map<String, dynamic>? sorgu_parametresi;
//
//   final Map<String, dynamic>? veri;
//
//   Future getData() async {
//     try {
//       await base_Url();
//       final response = sorgu_parametresi != null
//           ? await dio.get(baseUrl + url, queryParameters: sorgu_parametresi)
//           : await dio.get(baseUrl + url);
//       if (response.statusCode == 200) {
//         print(response.statusCode);
//         return response.data;
//       } else {
//         throw Exception("Veriler yüklenemedi StatusCode: ${response.statusCode} Hata Mesajı: ${response.statusMessage}");
//       }
//     } catch (error) {
//       throw Exception("Verilere ulaşılamadı hata: $error");
//     }
//   }
//
//   Future postData(veri) async {
//     try {
//       base_Url();
//       final response = await dio.post(
//         baseUrl + url,
//         data: veri,
//       );
//       print(response.statusCode);
//       if (response.statusCode == 200) {
//         print(response.statusCode);
//         return response.data;
//       } else {
//         throw Exception("Veriler yüklenemedi StatusCode: ${response.statusCode} Hata Mesajı: ${response.statusMessage}");
//       }
//     } catch (error) {
//       throw Exception("Verilere ulaşılamadı hata: $error");
//     }
//   }
// }