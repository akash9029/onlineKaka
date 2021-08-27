import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
