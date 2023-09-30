import 'package:get/get.dart';
import 'package:parth_savaliya_demo2/ulitis/Apihelper.dart';


class Homecontroller extends GetxController{

  Future<void> apicall() async {
    await Apihelper.helper.Getdata();
  }
}