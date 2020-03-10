import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rxdart/rxdart.dart';

class AppbarPage extends StatelessWidget {
  final arguments;

  AppbarPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: DefaultTabController(
      length: 12,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                    isScrollable: true, tabs: <Widget>[
                  Tab(
                    text: '关注',
                  ),
                  Tab(
                    text: '推荐',
                  ),
                  Tab(
                    text: '地区',
                  ),
                  Tab(
                    text: '兴趣',
                  ),
                  Tab(
                    text: '地区',
                  ),
                  Tab(
                    text: '兴趣',
                  ),
                  Tab(
                    text: '关注',
                  ),
                  Tab(
                    text: '推荐',
                  ),
                  Tab(
                    text: '地区',
                  ),
                  Tab(
                    text: '兴趣',
                  ),
                  Tab(
                    text: '地区',
                  ),
                  Tab(
                    text: '兴趣',
                  ),
                ]),
              )
            ],
          ),
          centerTitle: true,
        ),
        body: TabBarView(children: <Widget>[
          ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Text("我是关注的第${index + 1}个");
              }),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Text("我是推荐的第${index + 1}个");
              }),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=179921705,932197673&fm=26&gp=0.jpg"),
                  ),
                  title: Text(
                    "我是地区的第${index + 1}个",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    "Flutter is Google's mobile UI framework for crafting hight",
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blueGrey,
                    ),
                  ),
                );
              }),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=179921705,932197673&fm=26&gp=0.jpg"),
                  ),
                  title: Text(
                    "我是兴趣的第${index + 1}个",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    "Flutter is Google's mobile UI framework for crafting hight",
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blueGrey,
                    ),
                  ),
                );
              }),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=179921705,932197673&fm=26&gp=0.jpg"),
                  ),
                  title: Text(
                    "我是兴趣的第${index + 1}个",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    "Flutter is Google's mobile UI framework for crafting hight",
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blueGrey,
                    ),
                  ),
                );
              }),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=179921705,932197673&fm=26&gp=0.jpg"),
                  ),
                  title: Text(
                    "我是兴趣的第${index + 1}个",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    "Flutter is Google's mobile UI framework for crafting hight",
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blueGrey,
                    ),
                  ),
                );
              }),
          ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Text("我是关注的第${index + 1}个");
              }),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Text("我是推荐的第${index + 1}个");
              }),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=179921705,932197673&fm=26&gp=0.jpg"),
                  ),
                  title: Text(
                    "我是地区的第${index + 1}个",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    "Flutter is Google's mobile UI framework for crafting hight",
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blueGrey,
                    ),
                  ),
                );
              }),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=179921705,932197673&fm=26&gp=0.jpg"),
                  ),
                  title: Text(
                    "我是兴趣的第${index + 1}个",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    "Flutter is Google's mobile UI framework for crafting hight",
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blueGrey,
                    ),
                  ),
                );
              }),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=179921705,932197673&fm=26&gp=0.jpg"),
                  ),
                  title: Text(
                    "我是兴趣的第${index + 1}个",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    "Flutter is Google's mobile UI framework for crafting hight",
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blueGrey,
                    ),
                  ),
                );
              }),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return _getData(context, index);
              }),
        ]),
      ),
    ));
  }

  Widget _getData(context, index) {
    return Card(
      margin: EdgeInsets.all(8),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      clipBehavior: Clip.antiAlias,
      semanticContainer: false,
      child: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16 / 9,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.zero),
              child: Image.network(
                "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=179921705,932197673&fm=26&gp=0.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Fluttertoast.showToast(
                  msg: "哈喽！我点击你",
                  toastLength: Toast.LENGTH_LONG,
                  fontSize: 18,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIos: 2,
                  backgroundColor: Colors.grey,
                  textColor: Colors.black);
            },
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=179921705,932197673&fm=26&gp=0.jpg"),
            ),
            title: Text(
              "Candy shop",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              "Flutter is Google's mobile UI framework for crafting hight",
              textAlign: TextAlign.left,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 14,
                color: Colors.blueGrey,
              ),
            ),
          ),
        ],
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
