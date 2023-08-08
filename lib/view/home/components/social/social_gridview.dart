part of '../../../../utils/import-path/app_import_path.dart';

class MySocialGridView extends StatelessWidget {
  const MySocialGridView({super.key});

  @override
  Widget build(BuildContext context) {
    /// provider myApi
    List<ModelMyAppSocial> myListData =
        Provider.of<MyControllerAPI>(context).myDataSocial!.social!;
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        // Horizontal
        mainAxisSpacing: 2,
        // Vertical
        crossAxisSpacing: 2,
      ),
      itemCount: myListData.length,
      itemBuilder: (context, index) => MySocialCard(
        myData: myListData.elementAt(index),
      ),
    );
  }
}
