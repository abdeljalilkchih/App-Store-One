part of '../../../utils/import-path/app_import_path.dart';

class MyDetailsDescription extends StatelessWidget {
  const MyDetailsDescription({super.key, required this.myData});

  final ModelMyAppSocial myData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(MyAppDime.l.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // header
          Text('${MyAppLangKey.description.tr()}:',
              style: GoogleFonts.racingSansOne()),
          MyAppDime.l.verticalSpace,
          ReadMoreText(
            '${myData.description}',
            textAlign: TextAlign.justify,
            trimMode: TrimMode.Line,
            trimLines: 3,
            colorClickableText: Colors.red,
            moreStyle:
                TextStyle(color: MyAppTheme.myColorAuth(context), height: 2),
            lessStyle:
                TextStyle(color: MyAppTheme.myColorAuth(context), height: 2),
            trimExpandedText: MyAppLangKey.showLess.tr(),
            trimCollapsedText: MyAppLangKey.readMore.tr(),
          ),
        ],
      ),
    );
  }
}
