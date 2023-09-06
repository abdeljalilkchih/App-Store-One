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
            Navigator.pushNamed(context, MyAppRoutes.myApp);
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
          MyTabAppBarHome(
              myIcon: MyAppMedia.social, myTitle: MyAppLangKey.socialMedia),
          MyTabAppBarHome(
              myIcon: MyAppMedia.premium, myTitle: MyAppLangKey.premium)
        ],
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(AppBar().preferredSize.height + kTextTabBarHeight);
}
