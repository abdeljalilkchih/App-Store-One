part of '../../utils/import-path/app_import_path.dart';

class MySplashPage extends StatefulWidget {
  const MySplashPage({super.key});

  @override
  State<MySplashPage> createState() => _MySplashPageState();
}

class _MySplashPageState extends State<MySplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      var route = MaterialPageRoute(builder: (context) => const MyHomePage());
      //Navigator.push(context, route);
      // Navigator.pushAndRemoveUntil(context, route, (route) => false);
      Navigator.pushReplacement(context, route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image(
        image: const AssetImage(MyAppMedia.appIconLight),
        width: MediaQuery.of(context).size.width / MyAppdime.xs,
      )),
    );
  }
}
