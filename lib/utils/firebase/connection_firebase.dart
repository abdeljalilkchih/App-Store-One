part of '../import-path/app_import_path.dart';

class MyFireBaseConnection extends StatefulWidget {
  const MyFireBaseConnection({super.key});

  @override
  State<MyFireBaseConnection> createState() => _MyFireBaseConnectionState();
}

class _MyFireBaseConnectionState extends State<MyFireBaseConnection> {
  Future<FirebaseApp>? myFirebaseApp;
  @override
  void initState() {
    super.initState();

    /// check connection with firebase
    myFirebaseApp = Firebase.initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: myFirebaseApp,
          builder: (context, snapshot) {
            /// check request in waiting
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                dev.log('connection firebase successfully! 😃');
                return const MySplashPage();
              } else {
                return const MyErrorText(myTitle: MyAppLangKey.errorNoData);
              }
            } else {
              return const MyErrorText(myTitle: MyAppLangKey.errorInitFirebase);
            }
          }),
    );
  }
}
