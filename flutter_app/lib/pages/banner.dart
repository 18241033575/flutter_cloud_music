import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class BannerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              "http://via.placeholder.com/288x188",
              fit: BoxFit.fill,
            );
          },
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          loop: true,
          duration: 300,
          autoplay: true,
          onTap: (index) {
            print("点击了第: $index 个");
          },
          pagination: SwiperPagination(
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(bottom: 20.0, right: 20.0),
            builder: SwiperPagination.dots
          ),
          autoplayDisableOnInteraction: true,
        ),
      )
    );
  }
}