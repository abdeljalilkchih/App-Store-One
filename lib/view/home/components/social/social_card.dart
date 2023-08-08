part of '../../../../utils/import-path/app_import_path.dart';

class MySocialCard extends StatelessWidget {
  const MySocialCard({super.key, required this.myData});
  final ModelMyAppSocial myData;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: GridTile(
        // box black
        footer: Card(
            color: MyAppColors.blackCardSocial,
            child: Padding(
              padding: EdgeInsets.all(MyAppDime.sm.w),
              child: Row(
                children: [
                  // Title App
                  Expanded(
                      child: Text(
                    '${myData.nameApp}',
                    style: MyAppTheme.tMedium(context)
                        ?.copyWith(color: MyAppColors.bgBlack),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )),
                  // Rating text
                  Text(
                    '${myData.rating}',
                    style: MyAppTheme.tSmall(context)
                        ?.copyWith(color: MyAppColors.bgBlack),
                  ),
                  // Rating icon
                  Icon(Icons.star, color: MyAppColors.star)
                ],
              ),
            )),
        // base _image
        child: Card(
            child: MyImagesWidget(
                myImage: myData.image ?? MyAppMedia.testImageNetwork2)),
      ),
    );
  }
}
