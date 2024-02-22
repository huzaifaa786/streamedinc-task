import 'dart:convert';
import 'package:dio/dio.dart';

class Api {
  static execute({url, data}) async {
    Dio dio = Dio();
    try {
      var response = await dio.post(url, data: data);
      var responseData = jsonDecode(response.toString());
      return responseData;
    } catch (e) {

      print("An error occurred: $e");
      return null; 
    }
  }
}
