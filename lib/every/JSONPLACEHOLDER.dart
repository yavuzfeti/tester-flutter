// import 'package:flutter/material.dart';
// import 'package:tester/Network3.dart';
//
// class jsonplaceholder extends StatefulWidget
// {
//   const jsonplaceholder({Key? key}) : super(key: key);
//
//   @override
//   State<jsonplaceholder> createState() => _jsonplaceholderState();
// }
//
// class _jsonplaceholderState extends State<jsonplaceholder>
// {
//   @override
//   void initState()
//   {
//     super.initState();
//     verileri_al();
//     // verileri_gonder(
//     //   {
//     //     "1": "bir",
//     //     "2": "iki",
//     //     "3": "üç",
//     //     "4": "dört",
//     //     "5": {
//     //       "5_1": "beş 1",
//     //       "5_2": "beş 2",
//     //       "5_3": "beş 3",
//     //       "5_4": "beş 4",
//     //       "5_5": {
//     //         "5_5_1": "beş 5 1",
//     //         "5_5_2": "beş 5 2",
//     //       }
//     //     },
//     //     "6": "alti",
//     //     "7": "yedi",
//     //     "8": {
//     //       "8_1": "sekiz 1",
//     //       "8_2": "sekiz 2",
//     //       "8_3": "sekiz 3",
//     //     }
//     //   },
//     // );
//   }
//
//   bool loading = true;
//   dynamic data = [];
//   List<dynamic> keys = [];
//   List<dynamic> values = [];
//
//   Future verileri_al() async
//   {
//     setState(() {
//       loading = true;
//     });
//
//     try
//     {
//       network adres = network("https://jsonplaceholder.typicode.com/users");
//       var get_data = await adres.get_data();
//       if(get_data != null)
//       {
//         data = get_data;
//       }
//     }
//     catch (e)
//     {
//       setState(()
//       {
//         loading = false;
//       });
//       print("HATA OLUŞTU $e");
//     }
//
//     setState(() {
//       loading = false;
//     });
//   }
//
//   // Future verileri_gonder(dynamic veri) async
//   // {
//   //   setState(()
//   //   {
//   //     loading = true;
//   //   });
//   //
//   //   try
//   //   {
//   //     network adres = network("https://jsonplaceholder.typicode.com/users");
//   //
//   //     var post_data = await adres.post_data(veri);
//   //
//   //     if (post_data != null)
//   //     {
//   //       data =  await post_data;
//   //
//   //       keys.addAll( await data.keys);
//   //       values.addAll(await data.values);
//   //
//   //       for (int x = 0; x < values.length; x++)
//   //       {
//   //         if (values[x].toString().contains(":"))
//   //         {
//   //           var y = await List.from(keys.sublist(x,keys.length));
//   //           //keys = keys.sublist(0,x+1);
//   //           keys.replaceRange(x+1, keys.length, await values[x].keys);
//   //           keys.addAll( await y);
//   //
//   //           var z = await List.from(values.sublist(x,values.length));
//   //           //values = values.sublist(0,x+1);
//   //           values.replaceRange(x+1, values.length, await values[x].values);
//   //           values.addAll( await z);
//   //
//   //           values[x] = null;
//   //         }
//   //       }
//   //     }
//   //     setState(()
//   //     {
//   //       loading = false;
//   //     });
//   //   }
//   //   catch (e)
//   //   {
//   //     setState(()
//   //     {
//   //       loading = false;
//   //     });
//   //     print("HATA OLUŞTU $e");
//   //   }
//   // }
//
//   @override
//   Widget build(BuildContext context)
//   {
//     return Scaffold(
//       body: loading
//           ? Center(child: CircularProgressIndicator())
//           : ListView.builder(
//               itemCount: data.length ?? 0,
//               itemBuilder: (context, int index)
//               {
//                 return Container(
//                   margin: EdgeInsets.all(20),
//                   decoration: BoxDecoration(
//                       color: Colors.deepPurple,
//                       borderRadius: BorderRadius.circular(20)),
//                   child: ListTile(
//                     title: Text("${data[index]}"),
//                   ),
//                 );
//               }),
//     );
//   }
// }