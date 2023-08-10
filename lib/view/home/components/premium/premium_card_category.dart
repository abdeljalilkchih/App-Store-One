part of '../../../../utils/import-path/app_import_path.dart';

class MyPremiumCardCategory extends StatelessWidget {
  const MyPremiumCardCategory(
      {super.key, required this.myHeader, required this.myListPremium});
  final String myHeader;
  final List<MyModelAppPremium> myListPremium;
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
                  myHeader.tr(),
                  style: MyAppTheme.hSmall(context),
                ),
              ),
            ),
            // list Application Category
            Expanded(
              flex: 5,
              child: ListView.builder(
                itemCount: myListPremium.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) => MyPremiumCard(
                  myData: myListPremium[index],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
