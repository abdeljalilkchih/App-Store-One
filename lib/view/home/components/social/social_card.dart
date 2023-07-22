part of '../../../../utils/import-path/app_import_path.dart';

class MySocialCard extends StatelessWidget {
  const MySocialCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridTile(
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
                  'Facebook',
                  style: MyAppTheme.tMedium(context)
                      ?.copyWith(color: MyAppColors.bgBlack),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )),
                // Rating text
                Text(
                  '4',
                  style: MyAppTheme.tSmall(context)
                      ?.copyWith(color: MyAppColors.bgBlack),
                ),
                // Rating icon
                Icon(Icons.star, color: MyAppColors.star)
              ],
            ),
          )),
      // base _image
      child: const Card(
          child: MyImagesWidget(myImage: MyAppMedia.testImageNetwork2)),
    );
  }
}
