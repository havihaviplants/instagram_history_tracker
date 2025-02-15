import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InstagramApp(),
    );
  }
}

class InstagramApp extends StatefulWidget {
  @override
  _InstagramAppState createState() => _InstagramAppState();
}

class _InstagramAppState extends State<InstagramApp> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    // WebView 컨트롤러 초기화
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted) // JavaScript 활성화
      ..loadRequest(Uri.parse('https://www.instagram.com')); // Instagram 웹 페이지 로드
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram'),
        backgroundColor: Colors.purple, // AppBar 색상
      ),
      body: WebViewWidget(
        controller: _controller,
      ),
    );
  }
}

