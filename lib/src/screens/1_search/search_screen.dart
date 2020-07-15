import 'dart:async';

import 'package:flutter/material.dart';
import 'package:seth_flutter/src/components/side_drawer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Completer<WebViewController> _controller;

  @override
  void initState() {
    super.initState();
    _controller = _getWebView();
  }

  _getWebView() {
    return Completer<WebViewController>();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Finding Seth', style: TextStyle(color: Colors.orange)),
        iconTheme: IconThemeData(color: Colors.orange),
      ),
      body: WebView(
        initialUrl: 'https://findingseth.com/',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
      drawer: SideDrawer(),
    );
  }
}
