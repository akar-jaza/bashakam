import 'package:bashakam_barawzanko/components/my_textfiled.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../API/fetch_slemani.dart';
import '../../constantes/Colors.dart';
import '../../constantes/system_ui_overlay_func.dart';
import 'package:connectivity/connectivity.dart';

class KamtrinKonmra extends StatefulWidget {
  const KamtrinKonmra({Key? key}) : super(key: key);

  @override
  State<KamtrinKonmra> createState() => _KamtrinKonmraState();
}

class _KamtrinKonmraState extends State<KamtrinKonmra> {
  SystemUiOverlayFunc uiOverlayFunc = SystemUiOverlayFunc();
  TextEditingController _textEditingController = TextEditingController();

  List<String> departmentName = [];
  List<String> parezga = [];
  List<String> gshty = [];

  int currentPage = 1;
  int pageSize = 10;
  bool isLoading = false;

  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    checkConnectivity(context);
    fetchData(currentPage, pageSize).then((data) {
      setState(() {
        departmentName = data?['departmentName'].cast<String>();
        parezga = data?['parezga'].cast<String>();
        gshty = data?['gshty'].cast<String>();
      });
    }).catchError((error) {
      print('Error: $error');
    });

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getMoreData();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
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
          });
        } else {
          _showConnectionSnackBar();
        }
      } catch (error) {
        print('Error: $error');
        _showConnectionSnackBar();
      } finally {
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  void _showConnectionSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content:
            Text('Failed to connect. Please check your network connection.'),
      ),
    );
  }

  Future<void> checkConnectivity(BuildContext context) async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      showConnectionDialog(context);
    }
  }

  void showConnectionDialog(BuildContext context) async {
    if (Theme.of(context).platform == TargetPlatform.iOS) {
      showCupertinoDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext dialogContext) {
          return CupertinoAlertDialog(
            title: const Text('Network Connection Required'),
            content: const Text('Please connect to a network and try again.'),
            actions: <Widget>[
              CupertinoDialogAction(
                child: const Text(
                  'OK',
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: () {
                  Navigator.pop(dialogContext);
                },
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return Theme(
            data: Theme.of(context).copyWith(
              dialogBackgroundColor:
                  ThemeColors.kBodyColor, // Set the background color
              textTheme: const TextTheme(
                // Set the text colors
                titleLarge: TextStyle(color: ThemeColors.kWhiteTextColor),
                bodyMedium: TextStyle(color: ThemeColors.kWhiteTextColor),
              ),
            ),
            child: AlertDialog(
              title: const Text('Network Connection Required'),
              content: const Text('Please connect to a network and try again.'),
              actions: <Widget>[
                TextButton(
                  child: const Text(
                    'OK',
                    style: TextStyle(color: ThemeColors.kblueColor),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    uiOverlayFunc.systemUiOverlay();
    return Scaffold(
      backgroundColor: ThemeColors.kBodyColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: ThemeColors.kWhiteTextColor),
        backgroundColor: ThemeColors.kBodyColor,
        surfaceTintColor: ThemeColors.kblueColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Align(
          alignment: Alignment.centerRight,
          child: Text(
            'کەمترین کۆنمرەی وەرگیراو',
            style: TextStyle(color: ThemeColors.kWhiteTextColor),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: MyTextField(
              textController: _textEditingController,
              labelText: 'ناوی بەش یاخود کۆنمرە بنووسە',
            ),
          ),
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemBuilder: (context, index) {
                if (index.isOdd) {
                  // Odd index represents the divider
                  return const Divider(
                    color: Color.fromARGB(72, 197, 198, 209),
                  );
                } else {
                  final itemIndex = index ~/ 2;

                  if (itemIndex >= departmentName.length) {
                    if (!isLoading) {
                      _getMoreData();
                    }

                    return const SizedBox(
                      height: 40,
                      child: Center(
                        child: CupertinoActivityIndicator(),
                      ),
                    );
                  }

                  return ListTile(
                    title: Text(
                      departmentName[itemIndex],
                      style: const TextStyle(
                        color: ThemeColors.kWhiteTextColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'پارێزگا: ${parezga[itemIndex]}',
                          style: const TextStyle(
                              color: ThemeColors.kWhiteTextColor),
                        ),
                        Text(
                          'گشتی: ${gshty[itemIndex]}',
                          style: const TextStyle(
                              color: ThemeColors.kWhiteTextColor),
                        ),
                      ],
                    ),
                  );
                }
              },
              itemCount: departmentName.length * 2,
            ),
          ),
        ],
      ),
    );
  }
}
