// import 'package:flutter/material.dart';
// import 'package:pdf/widgets.dart' as pw;
//
// class PdfScreen extends StatefulWidget {
//   const PdfScreen({Key? key}) : super(key: key);
//
//   @override
//   State<PdfScreen> createState() => _PdfScreenState();
// }
//
// class _PdfScreenState extends State<PdfScreen> {
//
//   List<String> getParagraphsFromPdf(pw.Document pdf) {
//     final paragraphs = <String>[];
//
//     for (var page in pdf.pages) {
//       for (var widget in page.widgets) {
//         if (widget is pw.Text) {
//           paragraphs.add(widget.text);
//         }
//       }
//     }
//
//     return paragraphs;
//   }
//
//   Map<String, String> separateQuestionsAndAnswers(List<String> paragraphs) {
//     final questionsAndAnswers = <String, String>{};
//
//     // Paragrafları soru ve cevaplara ayırın
//     // Kendi mantığınıza göre bu adımı uygulayabilirsiniz
//
//     return questionsAndAnswers;
//   }
//
//   void printQuestionsAndAnswers(Map<String, String> questionsAndAnswers) {
//     questionsAndAnswers.forEach((question, answer) {
//       print('Question: $question');
//       print('Answer: $answer');
//       print('--------------');
//     });
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     generatePdf();
//   }
//
//   void generatePdf() {
//     final pdf = pw.Document();
//
//     // PDF dosyasını yükleyin veya oluşturun
//
//     // PDF içeriğini paragraflara ayırın
//     final paragraphs = getParagraphsFromPdf(pdf);
//
//     // Soru ve cevapları ayırın
//     final questionsAndAnswers = separateQuestionsAndAnswers(paragraphs);
//
//     // Soru ve cevapları ayrı ayrı işleyin veya kaydedin
//
//     // Örneğin, soruları ve cevapları yazdırabilirsiniz
//     printQuestionsAndAnswers(questionsAndAnswers);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(),
//     );
//   }
// }
