part of '../../utils/import-path/app_import_path.dart';

class MyProfileImage extends StatelessWidget {
  const MyProfileImage({super.key, required this.myImoji});
  final String myImoji;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image(
        image: NetworkImage(myImoji),
        fit: BoxFit.fill,
        errorBuilder: (context, error, stackTrace) => const Image(
          image: AssetImage(MyAppMedia.profileNew),
          fit: BoxFit.fill,
        ),
        loadingBuilder: (context, child, loadingProgress) {
          return loadingProgress == null
              ? child
              : const Center(
                  child: CircularProgressIndicator(strokeWidth: 5),
                );
        },
      ),
    );
  }
}
