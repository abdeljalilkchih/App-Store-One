part of '../../../utils/import-path/app_import_path.dart';

class MyDrawerHeaderHome extends StatelessWidget {
  const MyDrawerHeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SafeArea(
        bottom: false,
        child: Row(
          children: [
            MyAppDime.l.horizontalSpace,
            // image profile
            const Expanded(
                child: MyProfileImage(myImoji: MyAppMedia.imageProfile)),
            // spacing width 16
            MyAppDime.l.horizontalSpace,
            // column (name and email)
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // name
                  Text(MyAppLangKey.nameUser.tr()),
                  // spacing height 8
                  MyAppDime.md.verticalSpace,
                  //email
                  const Text(
                    'mohamed@gmail.com',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
