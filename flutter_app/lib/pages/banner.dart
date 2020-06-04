import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_app/service/banner_req.dart';
import 'package:dio/dio.dart';
Dio dio = Dio();

void _getBannerData () async {
Response response = await dio.get("https://www.lantutu.wang/personalized?limit=6");

print(response.data.toString());
}
class BannerList extends StatelessWidget {
  List banners = ["https://p2.music.126.net/2jy8QSBjtjRSeyLKR3aaCw==/109951164509321497.jpg", "https://p2.music.126.net/8mkz9J6XXE3yarHJuprmPA==/109951165035762253.jpg", "https://p2.music.126.net/L5lMFJ8JIem6Iv3is0DneA==/109951164941456285.jpg", "https://p2.music.126.net/2jy8QSBjtjRSeyLKR3aaCw==/109951164509321497.jpg"];
  @override
  Widget build(BuildContext context) {
    _getBannerData();
    return (
      Container(
        padding: EdgeInsets.all(12.0),
        height: 160,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(const Radius.circular(8.0))
        ),
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              this.banners[index],
              fit: BoxFit.cover,
            );
          },
          itemCount: this.banners.length,
          scrollDirection: Axis.horizontal,
          loop: true,
          duration: 300,
          autoplay: true,
//          onTap: (index) {
//            print("点击了第: $index 个");
//          },
          pagination: SwiperPagination(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 20.0, right: 20.0),
            builder: DotSwiperPaginationBuilder(
              color:  Color(0xff858585),
              activeColor: Color(0xffdc2c1f)
            ),
          ),
//          control: new SwiperControl(
//            color: Color(0xffdc2c1f)
//          ),
          autoplayDisableOnInteraction: true,
        ),
      )
    );
  }
}