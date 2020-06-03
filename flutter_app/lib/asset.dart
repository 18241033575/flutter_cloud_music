import 'package:flutter/material.dart';

//class WarpDemo extends StatefulWidget {
//  _WarpDemoState createState() => _WarpDemoState();
//}
//
//class _WarpDemoState extends State<WarpDemo> {

class TopState extends StatefulWidget {
  _TopCommonNav createState() => _TopCommonNav();
}

class _TopCommonNav extends State<TopState> {
  final _defaultColor = Color(0xff858585);
  final _activeColor = Color(0xff222222);
  final _defaultSize = 12.0;
  final _activeSize = 16.0;
  int _currentIndex = 1;

  final PageController _controller = PageController(initialPage: 1);

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: new Row(
          children: <Widget>[
            Container(
                width: 60.0,
                margin: EdgeInsets.fromLTRB(0, 0, 12.0, 0),
                child: new FlatButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.list,
                    size: 22.0,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
//                        materialTapTargetSize: Material(elevation: 20.0,borderRadius: 10.0,),
//                      materialTapTargetSize: MaterialTapTargetSize.padded,
                )),
            Expanded(
                child: new FlatButton(
                    onPressed: () {
                      setState(() {
                        _currentIndex = 0;
                      });
                    },
                    child: new Text('我的',
                        style: new TextStyle(
                            fontSize:
                            _currentIndex != 0 ? _defaultSize : _activeSize,
                            color: _currentIndex != 0
                                ? _defaultColor
                                : _activeColor)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))))),
            Expanded(
              child: new FlatButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                  },
                  child: new Text('发现',
                      style: new TextStyle(
                          fontSize:
                          _currentIndex != 1 ? _defaultSize : _activeSize,
                          color:
                          _currentIndex != 1 ? _defaultColor : _activeColor)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)))),
            ),
            Expanded(
              child: new FlatButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 2;
                    });
                  },
                  child: new Text('云村',
                      style: new TextStyle(
                          fontSize:
                          _currentIndex != 2 ? _defaultSize : _activeSize,
                          color:
                          _currentIndex != 2 ? _defaultColor : _activeColor)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)))),
            ),
            Expanded(
              child: new FlatButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 3;
                    });
                  },
                  child: new Text(
                    '视频',
                    style: new TextStyle(
                        fontSize: _currentIndex != 3 ? _defaultSize : _activeSize,
                        color: _currentIndex != 3 ? _defaultColor : _activeColor),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)))),
            ),
            Container(
                width: 60.0,
                margin: EdgeInsets.fromLTRB(12.0, 0, 0, 0),
                child: new IconButton(
                    icon: new Icon(
                      Icons.search,
                      size: 22.0,
                    ),
                    onPressed: () {}))
          ],
        ),
      ),
    );
  }
}
