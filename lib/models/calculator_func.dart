import 'dart:developer';

import '../screens/calculator_page.dart';
import '../utils/utils.dart';

class Func{

  static var adds;

 static String add(){
   Utils.controller.text=Utils.controller.text+adds;
    return Utils.controller.text;
    log(Utils.controller.text);
  }
}