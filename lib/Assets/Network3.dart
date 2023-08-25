// import 'package:dio/dio.dart';
//
// class Network3
// {
//   final dio = Dio();
//
//   String url;
//
//   Network3(this.url);
//
//   Future<dynamic> get_data() async
//   {
//     try
//     {
//       print("Network Servis: 3");
//       final response = await dio.get(url);
//       if (response.statusCode == 200)
//       {
//         print("GET ÇALIŞTI\nSTATUS KODU: ${response.statusCode}\n");
//         return response.data;
//       }
//       else
//       {
//         throw Exception("GET HATASI\nSTATUS KODU: ${response.statusCode}\nSTATUS MESAJI: ${response.statusMessage}\n");
//       }
//     }
//     on DioError catch (e)
//     {
//       throw Exception("DİO GET HATASI\nSTATUS KODU: ${e.response?.statusCode}\nSTATUS MESAJI: ${e.response?.statusMessage}\n");
//     }
//     catch (e)
//     {
//       throw Exception("HATA MESAJI: $e\n");
//     }
//   }
//
//   Future<dynamic> post_data(veri) async
//   {
//     try
//     {
//       final response = await dio.post(url, data: veri);
//       if (response.statusCode == 200 || response.statusCode == 201)
//       {
//         print("POST ÇALIŞTI\nSTATUS KODU: ${response.statusCode}\n");
//         return response.data;
//       }
//       else
//       {
//         throw Exception("POST HATASI\nSTATUS KODU: ${response.statusCode}\nSTATUS MESAJI: ${response.statusMessage}\n");
//       }
//     }
//     on DioError catch (e)
//     {
//       throw Exception("DİO POST HATASI\nSTATUS KODU: ${e.response?.statusCode}\nSTATUS MESAJI: ${e.response?.statusMessage}\n");
//     }
//     catch (e)
//     {
//       throw Exception("HATA MESAJI: $e\n");
//     }
//   }
//
//   Future<dynamic> put_data(veri) async
//   {
//     try
//     {
//       final response = await dio.put(url, data: veri);
//       if (response.statusCode == 204)
//       {
//         print("PUT ÇALIŞTI\nSTATUS KODU: ${response.statusCode}\n");
//         return response.data;
//       }
//       else
//       {
//         throw Exception("PUT HATASI\nSTATUS KODU: ${response.statusCode}\nSTATUS MESAJI: ${response.statusMessage}\n");
//       }
//     }
//     on DioError catch (e)
//     {
//       throw Exception("DİO PUT HATASI\nSTATUS KODU: ${e.response?.statusCode}\nSTATUS MESAJI: ${e.response?.statusMessage}\n");
//     }
//     catch (e)
//     {
//       throw Exception("HATA MESAJI: $e\n");
//     }
//   }
//
//   Future<dynamic> delete_data() async
//   {
//     try
//     {
//       final response = await dio.delete(url);
//       if (response.statusCode == 204)
//       {
//         print("DELETE ÇALIŞTI\nSTATUS KODU: ${response.statusCode}\n");
//         return response.data;
//       }
//       else
//       {
//         throw Exception("DELETE HATASI\nSTATUS KODU: ${response.statusCode}\nSTATUS MESAJI: ${response.statusMessage}\n");
//       }
//     }
//     on DioError catch (e)
//     {
//       throw Exception("DİO DELETE HATASI\nSTATUS KODU: ${e.response?.statusCode}\nSTATUS MESAJI: ${e.response?.statusMessage}\n");
//     }
//     catch (e)
//     {
//       throw Exception("HATA MESAJI: $e\n");
//     }
//   }
// }