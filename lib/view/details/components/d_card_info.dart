part of '../../../utils/import-path/app_import_path.dart';

class MyDetailsCardInfo extends StatelessWidget {
  const MyDetailsCardInfo(
      {super.key, required this.myIcon, required this.myTitle});
  final IconData myIcon;
  final String myTitle;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Icon
            Icon(myIcon),

            // Text
            Text(myTitle),
          ],
        ),
      ),
    );
  }
}
