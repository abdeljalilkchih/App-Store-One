part of '../../../utils/import-path/app_import_path.dart';

class MyAppCard extends StatelessWidget {
  const MyAppCard({super.key, required this.myData});
  final MyModelDBApp myData;
  @override
  Widget build(BuildContext context) {
    //MyControllerDB myDatabase = Provider.of<MyControllerDB>(context);
    return Container(
      height: (MyAppDime.xxxl / 1.3).h,
      margin: EdgeInsets.all(MyAppDime.md.w),
      child: Row(
        children: [
          //  Image
          Expanded(
            flex: 2,
            child: Container(
              height: MyAppDime.xxxl.h,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(MyAppDime.l.w),
              ),
              child: MyImagesWidget(
                  myImage: myData.image ?? MyAppMedia.testImageNetwork2),
            ),
          ),
          //  Spacing
          MyAppDime.md.horizontalSpace,
          //  Info
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //  Name App
                Text('${myData.name}', style: MyAppTheme.bMedium(context)),
                // Type
                Text('${myData.type}'),
                //  Rating And Size App
                Row(
                  children: [
                    //  Rating
                    Text(
                      '${myData.rating}',
                      style: MyAppTheme.bMedium(context)
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.star,
                      size: MyAppDime.l.w,
                      color: MyAppColors.star,
                    ),
                    const Spacer(),
                    // Size App
                    RichText(
                      text: TextSpan(
                        text: '${myData.size}',
                        style: DefaultTextStyle.of(context).style,
                        children: [
                          const TextSpan(text: ' '),
                          TextSpan(
                            text: MyAppLangKey.megabyte.tr(),
                            style: MyAppTheme.bMedium(context)
                                ?.copyWith(color: MyAppColors.bgRed),
                          )
                        ],
                      ),
                    ),
                    const Spacer(flex: 3),
                  ],
                )
              ],
            ),
          ),
          // Delete Button
          Expanded(
            child: IconButton(
              onPressed: () async {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) => MyAlertDelete(
                    myData: myData,
                  ),
                );
              },
              icon: Icon(
                Platform.isAndroid ? Icons.delete : CupertinoIcons.delete,
                size: (MyAppDime.xl * 1.2).w,
                color: MyAppColors.bgRed,
              ),
            ),
          )
        ],
      ),
    );
  }
}
