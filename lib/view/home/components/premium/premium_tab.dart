part of '../../../../utils/import-path/app_import_path.dart';

class MyPremiumTab extends StatefulWidget {
  const MyPremiumTab({super.key});

  @override
  State<MyPremiumTab> createState() => _MyPremiumTabState();
}

class _MyPremiumTabState extends State<MyPremiumTab> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      MyControllerAPI myApi =
          Provider.of<MyControllerAPI>(context, listen: false);
      myApi.fetchDataPremium(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    // provider api
    MyControllerAPI myApi = Provider.of<MyControllerAPI>(context);
    MyModelPremium myDataPremium =
        myApi.myDataPremium?.premium ?? MyModelPremium();
    return myApi.myLoading
        ? const Center(child: CircularProgressIndicator())
        : myApi.myDataPremium != null
            ? RefreshIndicator(
                onRefresh: onMyRefresh,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      MyPremiumCardCategory(
                        myHeader: MyAppLangKey.games,
                        myListPremium: myDataPremium.games ?? [],
                      ),
                      MyPremiumCardCategory(
                        myHeader: MyAppLangKey.artDesign,
                        myListPremium: myDataPremium.artDesign ?? [],
                      ),
                      MyPremiumCardCategory(
                        myHeader: MyAppLangKey.education,
                        myListPremium: myDataPremium.education ?? [],
                      ),
                    ],
                  ),
                ),
              )
            : const MyErrorText(myTitle: MyAppLangKey.errorNoData);
  }

  Future<void> onMyRefresh() async {
    MyControllerAPI myPApi =
        Provider.of<MyControllerAPI>(context, listen: false);
    myPApi.fetchDataPremium(context);
  }
}
