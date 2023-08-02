part of '../../utils/import-path/app_import_path.dart';

class MyWebViewPage extends StatefulWidget {
  const MyWebViewPage({super.key, required this.myTitle, required this.myUrl});
  final String myTitle;
  final String myUrl;
  @override
  State<MyWebViewPage> createState() => _MyWebViewPageState();
}

class _MyWebViewPageState extends State<MyWebViewPage> {
  /// [myControllWebView] handle webview
  final WebViewController myControllWebView = WebViewController();

  /// [isMyLoading] show loading custom
  bool isMyLoading = true;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      myControllWebView
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(Uri.parse(widget.myUrl))
        ..setBackgroundColor(MyAppTheme.myThemeColor(context))
        ..setNavigationDelegate(
          NavigationDelegate(
            onPageFinished: (url) {
              isMyLoading = false;
              setState(() {});
            },
          ),
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.myTitle.tr()),
      ),
      body: Stack(
        children: [
          // base
          WebViewWidget(controller: myControllWebView),
          // loading hidden when show webview
          if (isMyLoading) const Center(child: CircularProgressIndicator())
        ],
      ),
    );
  }
}
