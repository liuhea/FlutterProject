import 'package:flutter/material.dart';
import 'column_widget.dart';
import 'words_list.dart';

void main() => runApp(new ColumnDemo());

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter Demo'),
        ),
        body: new IconButton(
          icon: new Icon(Icons.android),
          iconSize: 50.0,
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(
              builder: (context) {
                return new Scaffold(
                  appBar: new AppBar(
                    title: new Text('new page'),
                  ),
                  body: new Center(
                    child: new Text('哈哈'),
                  ),
                  floatingActionButton: new FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: new Icon(Icons.replay),
                  ),
                );
              },
            ));
          },
        ),
      ),
    );
  }
}
