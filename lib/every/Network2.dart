// import 'package:dio/dio.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
//
// class Network2
// {
//   static final Dio dio = Dio();
//
//   static const storage = FlutterSecureStorage();
//
//   static const String baseUrl = "https://kursdefteri.com.tr/api/";
//
//   static Future<void> takeToken() async
//   {
//     if(dio.options.headers['Authorization'] == null)
//     {
//       dio.options.headers['Authorization'] = 'Bearer ${await storage.read(key: 'token')}';
//     }
//   }
//
//   static Future<dynamic> get (url,{dynamic data}) async
//   {
//     return await process(url,"Get", data);
//   }
//
//   static Future<dynamic> post (url, dynamic data) async
//   {
//     return await process(url,"Post", data);
//   }
//
//   static Future<dynamic> put (url, {dynamic data}) async
//   {
//     return process(url,"Put", data);
//   }
//
//   static Future<dynamic> delete (url) async
//   {
//     return process(url,"Delete", null);
//   }
//
//   static Future<dynamic> process (String url, String process, dynamic data) async
//   {
//     try
//     {
//       await takeToken();
//       Response response;
//       switch (process)
//       {
//         case "Get":
//           response = await dio.get(baseUrl + url, queryParameters: data);
//           print("GET ÇALIŞTI | Status Kodu: ${response.statusCode} | Url: ${baseUrl + url} | Parametre: $data");
//           return response.data;
//
//         case "Post":
//           response = await dio.post(baseUrl + url, data: data);
//           print("POST ÇALIŞTI | Status Kodu: ${response.statusCode} | Url: ${baseUrl + url} | Veri: $data");
//           return response.data;
//
//         case "Put":
//           response = await dio.put(baseUrl + url, data: data);
//           print("PUT ÇALIŞTI | Status Kodu: ${response.statusCode} | Url: ${baseUrl + url} | Veri: $data");
//           return response.data;
//
//         case "Delete":
//           response = await dio.delete(baseUrl + url);
//           print("DELETE ÇALIŞTI | Status Kodu: ${response.statusCode} | Url: ${baseUrl + url}");
//           return response.data;
//
//         default:
//           throw Exception("Geçersiz: $process");
//       }
//     }
//     on DioError catch (e)
//     {
//       if(e.response?.statusCode == 401)
//       {
//         storage.deleteAll();
//         throw Exception("YETKİSİZ GİRİŞ HATASI | Status Kodu: ${e.response?.statusCode} | İşlem: $process | Url: ${baseUrl+url} | Veri: $data\nStatus Mesajı: ${e.response?.statusMessage}\n");
//       }
//       throw Exception("DİO HATASI | Status Kodu: ${e.response?.statusCode} | İşlem: $process | Url: ${baseUrl+url} | Veri: $data\nStatus Mesajı: ${e.response?.statusMessage}\n");
//     }
//     catch (e)
//     {
//       throw Exception("HATA: $e\n");
//     }
//   }
// }