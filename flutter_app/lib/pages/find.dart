import 'package:flutter/material.dart';
import 'banner.dart';

class Find extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea (
      child: new Column(

        children: <Widget>[
          BannerList(),
        ],
      )
    );
  }
}