/*import 'dart:ui';

import 'Servisler/Network.dart';

class Languages2
{
  static int languageCode = 0;

  static void selectLanguage() async
  {
    String? code = await storage.read(key: "languageCode");
    if(code != null && code != "")
    {
      languageCode = int.parse(code);
    }
    else if (window.locales.isNotEmpty && languages.contains(window.locales.first.languageCode))
    {
      languageCode = languages.indexOf(window.locales.first.languageCode.toString());
    }
  }

  static List<String> languages = ["tr", "en", "de", "es"];

  static Future<String> view(List<String> words) async
  {
    return words[languageCode];
  }
}*/