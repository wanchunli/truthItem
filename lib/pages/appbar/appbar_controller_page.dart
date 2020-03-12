import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rxdart/rxdart.dart';

class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key key}) : super(key: key);

  _TabBarControllerState createState() => _TabBarControllerState();
}

class _TabBarControllerState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, length: 12);
    _tabController.addListener(() {
      print("滑动到${_tabController.index}");
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
            isScrollable: true,
            controller: this._tabController,
            tabs: <Widget>[
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
      ),
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return _getData(context, index);
              }),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return _getData(context, index);
              }),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return _getData(context, index);
              }),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return _getData(context, index);
              }),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return _getData(context, index);
              }),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return _getData(context, index);
              }),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return _getData(context, index);
              }),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return _getData(context, index);
              }),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return _getData(context, index);
              }),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return _getData(context, index);
              }),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return _getData(context, index);
              }),
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return _getData(context, index);
              }),
        ],
      ),
      endDrawer: Drawer(
        child: Container(
//          child: ListView.builder(
//              itemCount: 20,
//              itemBuilder: (context, index) {
//                return _getData(context, index);
//              }),
          child: ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: UserAccountsDrawerHeader(
                      accountName: Text("宛春"),
                      accountEmail: Text("1596900283@qq.com"),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "http://b-ssl.duitang.com/uploads/item/201703/26/20170326161532_aGteC.jpeg"),
                      ),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=179921705,932197673&fm=26&gp=0.jpg",
                              ),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ],
              ),
//              _getSingleData(context),
//              _getSingleData(context),
//              _getSingleData(context),
//              _getSingleData(context),
//              _getSingleData(context),
//              _getSingleData(context),
//              _getSingleData(context),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return _getData(context, index);
                  }),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getSingleData(context) {
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
              Navigator.of(context).pop();
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
