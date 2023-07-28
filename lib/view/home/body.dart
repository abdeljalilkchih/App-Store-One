part of '../../utils/import-path/app_import_path.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void dispose() {
    super.dispose();
    // print('Out Page');
  }

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: MyAppBarHome(),
        drawer: MyDrawerHome(),
        body: TabBarView(physics: NeverScrollableScrollPhysics(), children: [
          MySocialTab(),
          MyPremiumTab(),
        ]),
      ),
    );
  }
}
