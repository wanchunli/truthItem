import 'package:flutter/material.dart';
import './config/index.dart';
import './provide/current_index_provide.dart';
import 'package:provide/provide.dart';
import './pages/index_page.dart';
import './config/router.dart';


void main() {
  var currentIndexProvide = CurrentIndexProvide();
  var providers = Providers();

  providers..provide(Provider<CurrentIndexProvide>.value(currentIndexProvide));
  runApp(ProviderNode(child: MyApp(), providers: providers));
}

class MyApp extends StatelessWidget {
  final person = DateTime.now();
  static const studient = '';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: onGenerateRoute,
      title: KString.mainTitle,
      //商城
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: KColor.primaryColor,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("商城"),
        ),
        body: IndexPage(),
      ),
//          home: ,
    );
  }
}
