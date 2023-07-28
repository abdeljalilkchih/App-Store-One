part of '../../../../utils/import-path/app_import_path.dart';

class MyPremiumTab extends StatelessWidget {
  const MyPremiumTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          MyPremiumCardCategory(),
          MyPremiumCardCategory(),
          MyPremiumCardCategory(),
        ],
      ),
    );
  }
}
