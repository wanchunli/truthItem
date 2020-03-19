import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './config/index.dart';
import './provide/current_index_provide.dart';

//import 'package:provide/provide.dart';
import './pages/index_page.dart';
import './config/router.dart';
import 'model/ThemeModel.dart';

//void main() {
//  var currentIndexProvide = CurrentIndexProvide();
//  var providers = Providers();
//
//  providers..provide(Provider<CurrentIndexProvide>.value(currentIndexProvide));
//  runApp(ProviderNode(child: MyApp(), providers: providers));
//}
//
//class MyApp extends StatelessWidget {
//  final person = DateTime.now();
//  static const studient = '';
//
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      onGenerateRoute: onGenerateRoute,
//      title: KString.mainTitle,
//      //商城
//      debugShowCheckedModeBanner: false,
//      theme: ThemeData(
//        primaryColor: KColor.primaryColor,
//      ),
//      home: Scaffold(
////        appBar: AppBar(
////          title: Text("商城"),
////        ),
//        body: IndexPage(),
//      ),
////          home: ,
//    );
//  }
//}

void main() {
  runApp(
    ValueListenableProvider<int>(
        create: (_) {
          return ValueNotifier(0);
        },
        child: ChangeNotifierProvider(
          create: (_) {
            return ThemeModel(ThemeType.light);
          },
          child: MyApp(),
        )),
  );
}



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeModel>(context, listen: true).themeData,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Provider 测试",
            style: TextStyle(fontSize: 18),
          ),
        ),
        body: new Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Consumer<ThemeModel>(
                  // ignore: missing_return
                  builder: (context, t, child) {
                    String result = "切换成";
                    if (t.currentType == ThemeType.light) {
                      result += "夜间模式";
                    } else {
                      result += "白天模式";
                    }
                    return Text(result);
                  },
                ),
                onPressed: () {
                  Provider.of<ThemeModel>(context, listen: false).reverse();
                },
              ),
              RaisedButton(
                child: Selector<ThemeModel, ThemeType>(
                  builder: (context, type, child) {
                    String result = "切换成";
                    if (type == ThemeType.light) {
                      result += "夜间模式";
                    } else {
                      result += "白天模式";
                    }
                    return Text(result);
                  },
                  selector: (context, ThemeModel) {
                    return ThemeModel.currentType;
                  },
                  shouldRebuild: (pre, next) {
                    return pre != next;
                  },
                ),
                onPressed: () {
                  int value = Provider.of<int>(context,listen: false);
                  print("value=${value}");
                  Provider.of<ThemeModel>(context, listen: false).reverse();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
