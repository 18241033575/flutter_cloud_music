import 'package:dio/dio.dart';


Future<Null> _getBannerData () async {
  Dio dio = Dio();
  Response response = await dio.get("https://www.lantutu.wang/song/url?id=375090");
  print(response.data);
}