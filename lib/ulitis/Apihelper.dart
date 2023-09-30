import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:parth_savaliya_demo2/modal/homemodal.dart';

class Apihelper {
  static final helper = Apihelper._();
  Apihelper._();

  Future<Homemodal> Getdata() async {
    String Link = "https://praticle-service.s3.ap-south-1.amazonaws.com/red_and_white_api.json";
    var responce = await http.get(Uri.parse(Link),);
    var json = jsonDecode(responce.body);
    return Homemodal.fromJson(json);
  }
}
