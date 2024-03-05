import 'dart:developer';

import '../screens/calculator_page.dart';
import '../utils/utils.dart';

class Func{

  static var adds=0;

 static void add(){
    Utils.controller.text=(adds+int.parse(Utils.controller.text)) as String;
    log(Utils.controller.text);
  }
}