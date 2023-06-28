// ignore_for_file: avoid_print

import 'package:bashakam_barawzanko/components/my_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../API/fetch_slemani.dart';
import '../../constantes/Colors.dart';
import '../../constantes/system_ui_overlay_func.dart';

class KamtrinKonmra extends StatefulWidget {
  const KamtrinKonmra({Key? key}) : super(key: key);

  @override
  State<KamtrinKonmra> createState() => _KamtrinKonmraState();
}

class _KamtrinKonmraState extends State<KamtrinKonmra> {
  SystemUiOverlayFunc uiOverlayFunc = SystemUiOverlayFunc();
  TextEditingController _textEditingController = TextEditingController();

  Map<String, dynamic> fetchedData = {};

  @override
  void initState() {
    super.initState();
    fetchData().then((data) {
      // Assign the fetched data to the map and update the UI
      setState(() {
        fetchedData = data;
      });
    }).catchError((error) {
      // Handle any errors that occurred during fetching the data
      print('Error: $error');
    });
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
            itemBuilder: (context, index) {
              final departmentName =
                  fetchedData['departmentName'] as List<dynamic>;
              final parezga = fetchedData['parezga'] as List<dynamic>;
              final gshty = fetchedData['gshty'] as List<dynamic>;

              if (index.isOdd) {
                // Odd index represents the divider
                return const Divider(
                  color: Color.fromARGB(72, 197, 198, 209),
                );
              } else {
                // Even index represents the actual item
                final itemIndex = index ~/ 2;
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
                      Text(
                        'پارێزگا: ${parezga[itemIndex]}',
                        style:
                            const TextStyle(color: ThemeColors.kWhiteTextColor),
                      ),
                      Text(
                        'گشتی: ${gshty[itemIndex]}',
                        style:
                            const TextStyle(color: ThemeColors.kWhiteTextColor),
                      ),
                    ],
                  ),
                );
              }
            },
            itemCount: fetchedData['departmentName'] != null
                ? fetchedData['departmentName'].length * 2 - 1
                : 0,
          ))
        ],
      ),
    );
  }
}
