part of '../../../../utils/import-path/app_import_path.dart';

class MyPremiumCardCategory extends StatelessWidget {
  const MyPremiumCardCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      margin: EdgeInsets.all(MyAppDime.xs.w),
      child: Card(
        child: Column(
          children: [
            // header Category
            Expanded(
              child: Container(
                width: MyAppDime.fullScreen.sw,
                padding: EdgeInsets.symmetric(horizontal: MyAppDime.sm.w),
                child: Text(
                  MyAppLangKey.games.tr(),
                  style: MyAppTheme.dSmall(context),
                ),
              ),
            ),
            // list Application Category
            Expanded(
              flex: 5,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) => const MyPremiumCard(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
