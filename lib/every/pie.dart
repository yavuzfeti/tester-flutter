// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:tester/process.dart';
// import 'package:xml/xml.dart' as xml;
// import 'package:syncfusion_flutter_charts/charts.dart';
//
// class graphic_1 extends StatefulWidget {
//   const graphic_1({Key? key}) : super(key: key);
//
//   @override
//   State<graphic_1> createState() => _graphic_1State();
// }
//
// class _graphic_1State extends State<graphic_1> {
//   bool isLoading = true;
//   List<ChartData> chartData = [];
//   List<String> fuelTypes = [];
//
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(Duration.zero, getChartData);
//   }
//
//   Future getChartData() async {
//     DateTime now = DateTime.now();
//     String locale = Localizations.localeOf(context).languageCode;
//     DateTime nowPlusOneDay = now.add(Duration(days: 1));
//     DateTime nowMinusSevenDay = now.subtract(Duration(days: 7));
//
//     final formattedNowPlusOneDay =
//         DateFormat('yyyy-MM-dd').format(nowPlusOneDay);
//     final formattedNowMinusSevenDay =
//         DateFormat('yyyy-MM-dd').format(nowMinusSevenDay);
//
//     process adress = process('BayiSatislari', {
//       'userName': "Entegre",
//       'password': "123654",
//       'bayi_id': "19",
//       'YakitTurId': "0",
//       'bastarih': formattedNowMinusSevenDay,
//       'bittarih': formattedNowPlusOneDay,
//     });
//
//     var response2 = await adress.getData();
//
//     //donüştürme işlemi
//     final document2 = xml.XmlDocument.parse(response2);
//     final jsonStr2 = document2.text;
//     var salesDatedResult = jsonDecode(jsonStr2);
//     //dönüştürme işlemi
//
//     if (salesDatedResult != null) {
//       //Count how many types of fuel
//       List<String> fuelTypes = [];
//       for (var i = 0; i < salesDatedResult.length; i++) {
//         if (!fuelTypes.contains(salesDatedResult[i]['Yakit_Ad'])) {
//           fuelTypes.add(salesDatedResult[i]['Yakit_Ad']);
//         }
//       }
//       setState(() {
//         this.fuelTypes = fuelTypes;
//       });
//
//       //taih sıralama
//       salesDatedResult.sort((a, b) =>
//           DateTime.parse(a['Tarih']).compareTo(DateTime.parse(b['Tarih'])));
//
//       var dailyFuelsAndLiters = Map<String, dynamic>();
//
//       for (var i = 0; i < salesDatedResult.length; i++) {
//         var day = DateFormat.EEEE(locale).format(DateTime.parse(
//             salesDatedResult[i]['Tarih'])); //e.g. 2023-01-10T08:23:47.273
//         var fuel = salesDatedResult[i]['Yakit_Ad'];
//         int? liters = (salesDatedResult[i]['Litre'])?.round();
//
//         //Catogorize fuel and liters by daily
//         if (dailyFuelsAndLiters.containsKey(day)) {
//           if (dailyFuelsAndLiters[day].containsKey(fuel)) {
//             dailyFuelsAndLiters[day][fuel] += liters;
//           } else {
//             dailyFuelsAndLiters[day][fuel] = liters;
//           }
//         } else {
//           dailyFuelsAndLiters[day] = {fuel: liters};
//         }
//       }
//
//       Map<String, List> myMap = Map<String, List>();
//       for (var i = 0; i < dailyFuelsAndLiters.length; i++) {
//         var day = dailyFuelsAndLiters.keys.elementAt(i);
//         var fuels = dailyFuelsAndLiters[day];
//
//         for (var j = 0; j < fuels.length; j++) {
//           var fuel = fuels.keys.elementAt(j);
//           var indexOfFuel = fuelTypes.indexOf(fuel);
//
//           var liters = fuels[fuel];
//           if (myMap.containsKey(day)) {
//             myMap[day]?.insert(indexOfFuel, liters);
//           } else {
//             myMap[day] = [liters];
//           }
//         }
//       }
//       //Calculate total liters by fuel type
//       Map<String, int> totalLitersByFuelType = Map<String, int>();
//       for (var i = 0; i < fuelTypes.length; i++) {
//         var fuel = fuelTypes[i];
//         int? totalLiters = 0;
//         for (var j = 0; j < myMap.length; j++) {
//           var day = myMap.keys.elementAt(j);
//           var liters = myMap[day]![i];
//           totalLiters = (totalLiters! + liters) as int?;
//         }
//         totalLitersByFuelType[fuel] = totalLiters!;
//       }
//
//       setState(() {
//         isLoading = false;
//         chartData = totalLitersByFuelType.entries
//             .map((e) => ChartData(e.key, e.value))
//             .toList();
//       });
//     } else {
//       return null;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return !isLoading
//         ? Center(
//             child: CircularProgressIndicator(),
//           )
//         : Scaffold(
//             body: Container(
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   border: Border.all(width: 2, color: Colors.deepOrange)),
//               child: SfCircularChart(
//                 title: ChartTitle(text: 'Yakıt Satışları'),
//                 legend: Legend(isVisible: true),
//                 series: List<PieSeries<ChartData, String>>.generate(
//                   fuelTypes.length,
//                   (int index) {
//                     return PieSeries<ChartData, String>(
//                       dataSource: chartData,
//                       xValueMapper: (ChartData data, _) => data.x,
//                       yValueMapper: (ChartData data, _) => data.y,
//                       dataLabelSettings: DataLabelSettings(isVisible: true),
//                       name: fuelTypes[index],
//                       explode: true,
//                       explodeIndex: 0,
//                       explodeOffset: '10%',
//                       radius: '100%',
//                       explodeAll: true,
//                     );
//                   },
//                 ),
//               ),
//             ),
//           );
//   }
// }
//
// class ChartData {
//   ChartData(this.x, this.y);
//
//   final String x;
//   final dynamic y;
// }
