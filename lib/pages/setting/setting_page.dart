import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rxdart/rxdart.dart';

class SettingPage extends StatelessWidget {
  final arguments;
  SettingPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(this.arguments["title"]),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.spaceBetween,
          runAlignment: WrapAlignment.spaceBetween,
          children: <Widget>[
            MyButton("我是设置页面"),
            MyButton("我是设置页面"),
            MyButton("我是设置页面"),
            MyButton("我是设置页面"),
            MyButton("我是设置页面"),
            MyButton("我是设置页面"),
            MyButton("我是设置页面"),
            MyButton("我是设置页面"),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;

  const MyButton(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: () {
        Fluttertoast.showToast(
            msg: this.text,
            toastLength: Toast.LENGTH_LONG,
            fontSize: 18,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIos: 2,
            backgroundColor: Colors.grey,
            textColor: Colors.black);
        List array = [1, 2, 3, 4, 5, 6, 7, 8, 9];
        Observable.fromIterable(array).map<String>((data) {
          return (data + 1).toString();
        }).doOnListen(() {
          print("被监听");
        }).listen((data) {
          print(data);
        });
      },
    );
  }
}
