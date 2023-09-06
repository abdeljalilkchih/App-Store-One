part of '../../../../utils/import-path/app_import_path.dart';

class MySocialTab extends StatefulWidget {
  const MySocialTab({super.key});

  @override
  State<MySocialTab> createState() => _MySocialTabState();
}

class _MySocialTabState extends State<MySocialTab> {
  // @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(Duration.zero, () {
  //     /// provider api
  //     MyControllerAPI myApi =
  //         Provider.of<MyControllerAPI>(context, listen: false);
  //     myApi.fetchDataSocial(context);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    /// provider myApi
    MyControllerAPI myApi = Provider.of<MyControllerAPI>(context);
    return myApi.myLoading
        ? const Center(child: CircularProgressIndicator())
        : myApi.myDataSocial?.social != null
            ? RefreshIndicator(
                onRefresh: onMyRefresh, child: const MySocialGridView())
            : const MyErrorText(myTitle: MyAppLangKey.errorNoData);
  }

  /// [onMyRefresh] again request to api
  Future<void> onMyRefresh() async {
    MyControllerAPI myPApi =
        Provider.of<MyControllerAPI>(context, listen: false);
    myPApi.fetchDataSocial(context);
  }
}
