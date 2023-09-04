part of '../../../utils/import-path/app_import_path.dart';

class MyDetailsHeader extends StatelessWidget {
  const MyDetailsHeader({super.key, required this.myData});
  final ModelMyAppSocial myData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // image app
        Container(
          width: MyAppDime.third.sw,
          height: MyAppDime.third.sw,
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(vertical: MyAppDime.l.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(MyAppDime.l.w),
          ),
          child: MyImagesWidget(
            myImage: myData.image ?? MyAppMedia.testImageNetwork2,
            myWidth: MyAppDime.third.sw,
            myHeight: MyAppDime.third.sw,
          ),
        ),
        // info App
        SizedBox(
          height: 0.1.sh,
          child: Row(
            children: [
              MyDetailsCardInfo(
                  myIcon: Icons.category, myTitle: '${myData.type}'),
              MyDetailsCardInfo(
                  myIcon: Icons.star, myTitle: '${myData.rating}'),
              MyDetailsCardInfo(
                  myIcon: Icons.memory, myTitle: '${myData.size}'),
              MyDetailsCardInfo(
                  myIcon: Icons.download, myTitle: '${myData.download}'),
            ],
          ),
        ),
      ],
    );
  }
}
