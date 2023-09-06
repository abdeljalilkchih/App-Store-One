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
    Future.delayed(Duration.zero, () {
      MyControllerAPI myApi =
          Provider.of<MyControllerAPI>(context, listen: false);
      myApi.cacheStorageData(context);
      Timer(const Duration(seconds: 3), () {
        Navigator.pushReplacementNamed(context, MyAppRoutes.wrapper);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image(
        image: const AssetImage(MyAppMedia.appIconLight),
        width: MediaQuery.of(context).size.width / MyAppDime.xs,
      )),
    );
  }
}
