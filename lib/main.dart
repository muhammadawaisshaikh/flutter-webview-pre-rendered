import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  
  String title,url;
  bool isLoading=true;
  final _key = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(routes: {
      "/": (_) => new WebviewScaffold(
        url: "https://awais-react-portfolio.herokuapp.com/",
        hidden: true, 
        initialChild: Container( 
          child:Center(child: Text("Loading"),) 
        ),
      )
    });
  }
}