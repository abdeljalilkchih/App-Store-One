part of '../utils/import-path/app_import_path.dart';

class MyAppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // foregroundColor: Colors.black,
      // backgroundColor: Colors.white,
      title:
          Text(MyAppLangKey.appName.tr(), style: GoogleFonts.racingSansOne()),
      actions: [
        IconButton(
          onPressed: () {
            dev.log('My Click Action Icon', name: 'MyAppBarHome');
          },
          icon: SvgPicture.asset(
            MyAppMedia.myApp,
            width: MyAppDime.xl.w,
            height: MyAppDime.xl.h,
            semanticsLabel: 'My App Bar',
          ),
        ),
      ],
      bottom: const TabBar(
        // labelColor: Colors.black,
        tabs: [
          MyTabAppBarHome(myIcon: MyAppMedia.social, myTitle: 'Social Media'),
          MyTabAppBarHome(myIcon: MyAppMedia.premium, myTitle: 'Premium')
        ],
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(AppBar().preferredSize.height + kTextTabBarHeight);
}
