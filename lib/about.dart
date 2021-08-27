import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class aboutPage extends StatefulWidget {
  const aboutPage({Key? key}) : super(key: key);

  @override
  _aboutPageState createState() => _aboutPageState();
}

class _aboutPageState extends State<aboutPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: WebView(
        initialUrl: "https://www.onlinekaka.com/store/page/about-us",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
