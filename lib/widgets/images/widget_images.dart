part of '../../utils/import-path/app_import_path.dart';

class MyImagesWidget extends StatelessWidget {
  const MyImagesWidget(
      {super.key, required this.myImage, this.myWidth, this.myHeight});
  final String myImage;
  final double? myWidth;
  final double? myHeight;
  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage(myImage),
      fit: BoxFit.fill,
      width: myWidth,
      height: myHeight,
      // handle error image (url not found)
      errorBuilder: (context, error, stackTrace) {
        return Image(
          image: const AssetImage(MyAppMedia.notFoundImage),
          fit: BoxFit.fill,
          width: myWidth,
          height: myHeight,
        );
      },
      // loading when get image
      // child is image properties
      loadingBuilder: (context, child, loadingProgress) {
        return loadingProgress == null
            ? child
            : const Center(
                child: CircularProgressIndicator(strokeWidth: 5),
              );
      },
    );
  }
}
