import 'package:dio/dio.dart';

class dio_helper{
  static Dio? dio ;
  static Init(){
    dio = Dio(
      BaseOptions(
        baseUrl:'https://newsapi.org/' ,
        receiveDataWhenStatusError: true,
        ),
    );
  }

  static Future<Response> getData({
    required String url ,
    required Map<String, dynamic> query,


  })async 
  {
    return await dio!.get(url,
    queryParameters: query,);
  }

}