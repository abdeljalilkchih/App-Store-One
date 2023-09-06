part of '../../utils/import-path/app_import_path.dart';

class MyPageMyApp extends StatefulWidget {
  const MyPageMyApp({super.key});

  @override
  State<MyPageMyApp> createState() => _PageMyAppState();
}

class _PageMyAppState extends State<MyPageMyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      MyControllerDB myDatabase =
          Provider.of<MyControllerDB>(context, listen: false);
      myDatabase.fetchDataFromDB;
    });
  }

  @override
  Widget build(BuildContext context) {
    /// provider
    List<MyModelDBApp> myListData =
        Provider.of<MyControllerDB>(context).dataList ?? <MyModelDBApp>[];
    return Scaffold(
      appBar: AppBar(
        title: Text(MyAppLangKey.myApps.tr()),
      ),
      body: ListView.builder(
        itemCount: myListData.length,
        itemBuilder: (context, index) {
          // ignore: prefer_const_constructors
          return MyAppCard(myData: myListData.elementAt(index));
        },
      ),
    );
  }
}
