import 'package:flutter/material.dart';

class ColumnDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      // Column is 垂直方向的线性布局.
      child: new Column(
        children: <Widget>[
          new RowDemo(
            title: new Text(
              'Column',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          new Expanded(
            child: new Center(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Image.network(
                      'http://pdaf73yzd.bkt.clouddn.com/one%20piece%20pic1',
                      scale: 5.0),
                  new Image.network(
                      'http://pdaf73yzd.bkt.clouddn.com/one_piece_pic2',
                      scale: 5.0),
                  new Image.network(
                      'http://pdaf73yzd.bkt.clouddn.com/one_piece_pic3',
                      scale: 5.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RowDemo extends StatelessWidget {
  RowDemo({this.title});

  // Widget子类中的字段往往都会定义为final
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Container(
        height: 85.0, // 单位是逻辑上的像素（并非真实的像素，类似于浏览器中的像素）
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 35.0, // 包含状态栏，所以为了居中要下移
        ),
        decoration: new BoxDecoration(color: Colors.blue[500]),
        // Row 是水平方向的线性布局（linear layout）
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          //列表项的类型是 <Widget>
          children: <Widget>[
            new IconButton(
              icon: new Icon(Icons.menu),
              tooltip: "Navigation Menu",
              onPressed: null,
            ),
            new Expanded(
              child: title,
            ),
            new IconButton(
              icon: new Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
