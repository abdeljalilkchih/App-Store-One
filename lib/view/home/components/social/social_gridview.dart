part of '../../../../utils/import-path/app_import_path.dart';

class MySocialGridView extends StatelessWidget {
  const MySocialGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        // Horizontal
        mainAxisSpacing: 2,
        // Vertical
        crossAxisSpacing: 2,
      ),
      itemCount: 8,
      itemBuilder: (context, index) => const MySocialCard(),
    );
  }
}
