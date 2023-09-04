part of '../../utils/import-path/app_import_path.dart';

class MyDetailsPage extends StatelessWidget {
  const MyDetailsPage({super.key, required this.myData});
  final ModelMyAppSocial myData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyDetailsAppBar(
        myData: myData,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MyAppDime.fullScreen.sw,
          child: Column(
            children: [
              // Header Details
              MyDetailsHeader(myData: myData),

              // description
              MyDetailsDescription(myData: myData),

              SizedBox(
                height: MyAppDime.third.sh,
                child: (myData.images?.length ?? 2) == 1
                    ? MyImagesWidget(
                        myImage: myData.images?.first ??
                            MyAppMedia.testImageNetwork2,
                      )
                    : ListView.builder(
                        itemCount: myData.images?.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return MyImagesWidget(
                            myImage: myData.images?.elementAt(index) ??
                                MyAppMedia.testImageNetwork2,
                          );
                        },
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
