import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewFlutter extends StatefulWidget {
  static const String routeName = "WebViews";
  final String category;

  const WebViewFlutter({super.key, required this.category});

  @override
  State<WebViewFlutter> createState() => _WebViewFlutterState();
}

class _WebViewFlutterState extends State<WebViewFlutter> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse(widget.category),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.only(right: 50),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("News",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            Text("App",
                style: TextStyle(
                    color: Colors.orange, fontWeight: FontWeight.bold)),
          ]),
        ),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
