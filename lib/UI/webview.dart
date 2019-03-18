

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart' ;

class WebView extends StatefulWidget {
  @override
  _WebViewState createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {

  final  String URL =  "https://updategroup.net/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: IconButton(icon: Icon(Icons.menu), onPressed: (){}),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text("Update Group"),

      ),
      body: Container(

        color: Colors.blueGrey,
        child: Padding(
          padding: const EdgeInsets.all(3.5),
          child: Card(

            borderOnForeground: true,
            elevation: 15.0,
            clipBehavior: Clip.antiAlias,
            child: WebviewScaffold(
              url:  URL,
              withJavascript: true,
              withZoom: false,
              withLocalStorage: true,
              hidden: true,
              initialChild: Container(
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment : MainAxisAlignment.center ,
                    children: <Widget>[

                      CircularProgressIndicator(
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(height :25.0),
                      Text('Waiting The Network.....' , style: TextStyle(fontSize: 15.0 , fontStyle: FontStyle.normal) ,),
                    ],
                  ),
                  //
                ),
              ),
            ),

          ),
        ),
      ),
    );
  }
}
