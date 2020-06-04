import 'package:dio/dio.dart';
Dio dio = Dio();

class BannerData {
  static Future<Null> _getBannerData () async {
    Response response = await dio.get("https://www.lantutu.wang/personalized?limit=6");
    print(response.data.toString());
  }
}
