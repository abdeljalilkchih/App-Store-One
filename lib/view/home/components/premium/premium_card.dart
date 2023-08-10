part of '../../../../utils/import-path/app_import_path.dart';

class MyPremiumCard extends StatelessWidget {
  const MyPremiumCard({super.key, required this.myData});
  final MyModelAppPremium myData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.45.sw,
      child: InkWell(
        onTap: () {},
        child: Card(
          child: Stack(
            clipBehavior: Clip.antiAlias,
            children: [
              //  Image
              MyImagesWidget(
                myImage: myData.image ?? MyAppMedia.testImageNetwork2,
                myHeight: 1.sw,
              ),
              // Name Application & Price
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                // ignore: avoid_unnecessary_containers
                child: Container(
                  color: MyAppColors.blackCardSocial,
                  padding: EdgeInsets.all(MyAppDime.sm.w),
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                        '${myData.nameApp}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: MyAppTheme.bLarge(context)
                            ?.copyWith(color: MyAppColors.bgBlack),
                      )),
                      // price
                      Text(
                        '${myData.price} ${MyAppLangKey.jd.tr()}',
                        style: MyAppTheme.bMedium(context)
                            ?.copyWith(color: MyAppColors.bgBlack),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
