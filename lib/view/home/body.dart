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
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: const MyAppBarHome(),
        drawer: const MyDrawerHome(),
        body: TabBarView(children: [
          const MySocialTab(),
          Container(color: Colors.greenAccent),
        ]),
      ),
    );
  }
}
