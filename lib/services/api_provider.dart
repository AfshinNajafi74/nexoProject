import 'package:dio/dio.dart';

/// Call API

class ApiProvider{
  Dio dio = Dio();

  Future getMethod() async{
    dio.options.headers['content-Type'] = 'application/json';
    return await dio.get(
      "http://api.nexobuilding.com/test",
      options: Options(responseType: ResponseType.json,method: 'GET')
    ).then((response) {
      return response;
    });

  }
}