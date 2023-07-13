// ignore_for_file: use_build_context_synchronously, avoid_print
import 'package:bashakam_barawzanko/components/my_textfiled.dart';
import 'package:bashakam_barawzanko/widgets/slemani_konmra_list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../API/fetch_all_cities.dart';
import '../../components/my_appbar.dart';
import '../../components/my_show_dialog.dart';
import '../../constantes/systemUi_overlay_helper.dart';
import 'package:connectivity/connectivity.dart';

import '../../constantes/them_colors.dart';

class KamtrinKonmra extends StatefulWidget {
  const KamtrinKonmra({Key? key}) : super(key: key);

  @override
  State<KamtrinKonmra> createState() => _KamtrinKonmraState();
}

class _KamtrinKonmraState extends State<KamtrinKonmra> {
  SystemUiOverlayHelper uiOverlayFunc = SystemUiOverlayHelper();
  final TextEditingController _textEditingController = TextEditingController();

  List<String> departmentName = [];
  List<String> parezga = [];
  List<String> gshty = [];

  List<String> filteredDepartmentName = [];

  int currentPage = 1;
  int pageSize = 20;
  bool isLoading = false;

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    checkConnectivity(context);
    _initScrollController();
    _fetchData();

    filteredDepartmentName = List.from(departmentName);

    // _fetchData().then((_) {
    //   setState(() {
    //     filteredDepartmentName = List.from(departmentName);
    //   });
    // });

    //filteredDepartmentName = departmentName;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _fetchData() async {
    try {
      final data = await fetchData(currentPage, pageSize);
      if (data != null) {
        setState(() {
          departmentName = data['departmentName'].cast<String>();
          parezga = data['parezga'].cast<String>();
          gshty = data['gshty'].cast<String>();
        });
      } else {
        showConnectionDialog(context);
      }
    } catch (error) {
      print('Error: $error');
      showConnectionDialog(context);
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  Future<void> _getMoreData() async {
    if (!isLoading) {
      setState(() {
        isLoading = true;
      });

      currentPage++;
      try {
        final data = await fetchData(currentPage, pageSize);
        if (data != null) {
          setState(() {
            departmentName.addAll(data['departmentName'].cast<String>());
            parezga.addAll(data['parezga'].cast<String>());
            gshty.addAll(data['gshty'].cast<String>());

            // Update the list of filtered departments with the combined data
            filteredDepartmentName = List.from(departmentName);
          });
        } else {
          showConnectionDialog(context);
        }
      } catch (error) {
        print('Error: $error');
        showConnectionDialog(context);
      } finally {
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  void _runFilter(String enteredKeyword) {
    if (enteredKeyword.isEmpty) {
      setState(() {
        filteredDepartmentName = List.from(departmentName);
      });
    } else {
      List<String> filteredList = departmentName
          .where((name) =>
              name.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      setState(() {
        filteredDepartmentName = filteredList;
      });
    }
  }

  Future<void> checkConnectivity(BuildContext context) async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      showConnectionDialog(context);
    }
  }

  void _initScrollController() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getMoreData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    uiOverlayFunc.setSystemUiOverlayStyle();
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: ThemeColors.kBodyColor,
        appBar: const MyAppBar(text: 'کەمترین کۆنمرەی وەرگیراو'),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: MyTextField(
                onPressed: () {},
                onChanged: (value) => _runFilter(value),
                textController: _textEditingController,
                labelText: 'ناوی بەش یاخود کۆنمرە بنووسە',
              ),
            ),
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                itemBuilder: (context, index) => SlemaniKonmraListItem(
                  departmentName: filteredDepartmentName,
                  gshty: gshty,
                  parezga: parezga,
                  index: index,
                ),
                itemCount: filteredDepartmentName.length +
                    1, // departmentName.length * 2
              ),
            ),
            if (isLoading)
              const SizedBox(
                height: 40,
                child: Center(
                    child: CupertinoActivityIndicator(
                  color: ThemeColors.kWhiteTextColor,
                )),
              ),
          ],
        ),
      ),
    );
  }
}
