import 'dart:developer';

import '../screens/calculator_page.dart';
import '../utils/utils.dart';

class Func{

  static var adds="String";

 // static String add(){
 //   Utils.controller.text=Utils.controller.text+adds;
 //    return Utils.controller.text;
 //    log(Utils.controller.text);
 //  }

  static String result(){
    Calculator().controller.text=adds;
    return Calculator().controller.text;
  }
}