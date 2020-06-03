import 'package:flutter/material.dart';
import 'find.dart';
import 'mine.dart';
import 'video.dart';
import 'village.dart';
//import 'package:dio/dio.dart';
//
//
//Future<Null> _getBannerData () async {
//  Dio dio = Dio();
//  Response response = await dio.get(
//      "https://www.lantutu.wang/song/url?id=375090");
//  print(response.data);
//}
class TabNavigator extends StatefulWidget {
  _TopCommonNav createState() => _TopCommonNav();
}

class _TopCommonNav extends State<TabNavigator> {
  final _defaultColor = Color(0xff858585);
  final _activeColor = Color(0xffdc2c1f);
  final _defaultSize = 12.0;
  final _activeSize = 16.0;
  int _currentIndex = 1;

  final PageController _controller = PageController(initialPage: 1);

  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: _controller,
          children: <Widget>[
            Mine(),
            Find(),
            Village(),
            Video(),
          ],
          physics: NeverScrollableScrollPhysics(),
        ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        selectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('images/mine.png', width: 24, height: 24,),
            activeIcon: Image.asset('images/mineActive.png', width: 24, height: 24,),
            title: Text(
              '我的',
              style: TextStyle(
                color: _currentIndex != 0 ? _defaultColor : _activeColor
              ),
            )
          ),
          BottomNavigationBarItem(
              icon: Image.asset('images/find.png', width: 24, height: 24,),
              activeIcon: Image.asset('images/findActive.png', width: 24, height: 24,),
              title: Text(
                '发现',
                style: TextStyle(
                    color: _currentIndex != 1 ? _defaultColor : _activeColor
                ),
              )
          ),
          BottomNavigationBarItem(
              icon: Image.asset('images/book.png', width: 24, height: 24,),
              activeIcon: Image.asset('images/bookActive.png', width: 24, height: 24,),
              title: Text(
                '云村',
                style: TextStyle(
                    color: _currentIndex != 2 ? _defaultColor : _activeColor
                ),
              )
          ),
          BottomNavigationBarItem(
              icon: Image.asset('images/video.png', width: 24, height: 24,),
              activeIcon: Image.asset('images/videoActive.png', width: 24, height: 24,),
              title: Text(
                '视频',
                style: TextStyle(
                    color: _currentIndex != 3 ? _defaultColor : _activeColor
                ),
              )
          ),
        ],
      )
    );
  }
}
