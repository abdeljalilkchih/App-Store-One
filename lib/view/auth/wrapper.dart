part of '../../utils/import-path/app_import_path.dart';

class MyWrapper extends StatelessWidget {
  const MyWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    MyControllerAuth authUserState = Provider.of<MyControllerAuth>(context);
    return Scaffold(
      body: StreamBuilder(
          stream: authUserState.myUserState,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            return snapshot.hasData ? const MyHomePage() : const MyLoginPage();
          }),
    );
  }
}
