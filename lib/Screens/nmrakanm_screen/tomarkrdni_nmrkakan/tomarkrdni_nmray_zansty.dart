import 'package:bashakam_barawzanko/components/my_button.dart';
import 'package:bashakam_barawzanko/constantes/colors.dart';
import 'package:flutter/material.dart';
import 'package:bashakam_barawzanko/Modals/lesson_modal.dart';
import '../../../components/my_textfiled.dart';
import '../score_page.dart';

class TomarkrdniNmrayZanstiPage extends StatefulWidget {
  const TomarkrdniNmrayZanstiPage({super.key});

  @override
  State<TomarkrdniNmrayZanstiPage> createState() =>
      _TomarkrdniNmrayZanstiPageState();
}

class _TomarkrdniNmrayZanstiPageState extends State<TomarkrdniNmrayZanstiPage> {
  final TextEditingController _mathTextController = TextEditingController();
  final TextEditingController _englishTextController = TextEditingController();
  final TextEditingController _kurdiTextController = TextEditingController();
  final TextEditingController _chemistryTextController =
      TextEditingController();
  final TextEditingController _biologyTextController = TextEditingController();
  final TextEditingController _physicTextController = TextEditingController();
  final TextEditingController _arabicAndAiinTextController =
      TextEditingController();

  static double zanstyFinalScore = 0;

  Color _mathTextfieldcolor = ThemeColors.kOutlinedTextfieldColor;
  Color _englishTextfieldcolor = ThemeColors.kOutlinedTextfieldColor;
  Color _chemistryTextfieldcolor = ThemeColors.kOutlinedTextfieldColor;
  Color _kurdishTextfieldcolor = ThemeColors.kOutlinedTextfieldColor;
  Color _biologyTextfieldcolor = ThemeColors.kOutlinedTextfieldColor;
  Color _physicTextfieldcolor = ThemeColors.kOutlinedTextfieldColor;
  Color _arabicAndAiinTextfieldcolor = ThemeColors.kOutlinedTextfieldColor;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  // double mathScore = 0, englishScore = 0;

  // double mathScore = 0,
  //     englishScore = 0,
  //     kurdiScore = 0,
  //     chemistryScore = 0,
  //     biologyScore = 0,
  //     physicScore = 0,
  //     arabicAndAiinScore = 0;

  void _calculateFinalScore() {
    double mathScore = double.tryParse(_mathTextController.text) ?? 0;
    double englishScore = double.tryParse(_englishTextController.text) ?? 0;
    double kurdiScore = double.tryParse(_kurdiTextController.text) ?? 0;
    double chemistryScore = double.tryParse(_chemistryTextController.text) ?? 0;
    double biologyScore = double.tryParse(_biologyTextController.text) ?? 0;
    double physicScore = double.tryParse(_physicTextController.text) ?? 0;
    double arabicAndAiinScore =
        double.tryParse(_arabicAndAiinTextController.text) ?? 0;

    List<LessonModal> lessons = [
      LessonModal(lessonName: "Math", score: mathScore),
      LessonModal(lessonName: "English", score: englishScore),
      LessonModal(lessonName: "Kurdi", score: kurdiScore),
      LessonModal(lessonName: "Chemistry", score: chemistryScore),
      LessonModal(lessonName: "Biology", score: biologyScore),
      LessonModal(lessonName: "Physics", score: physicScore),
      LessonModal(lessonName: "Arabic_and_Aiin", score: arabicAndAiinScore),
    ];

    zanstyFinalScore = lessons.fold(0, (sum, lesson) => sum + lesson.score);

    // setState(() {});
  }

  void _navigateToScorePage() {
    if (_mathTextController.text.isEmpty ||
        _englishTextController.text.isEmpty ||
        _kurdiTextController.text.isEmpty ||
        _chemistryTextController.text.isEmpty ||
        _biologyTextController.text.isEmpty ||
        _physicTextController.text.isEmpty ||
        _arabicAndAiinTextController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: ThemeColors.kTextfieledIsEmptyColor,
          content: Text(
            'تکایە نمرەی وانەکان تۆمار بکە و بە بەتاڵی جێی مەهێڵە',
            textAlign: TextAlign.end,
            style: TextStyle(
              fontFamily: 'rabarBold',
              color: Colors.black,
            ),
          ),
        ),
      );
    } else {
      // Calculate the final score before navigating to the ScorePage
      _calculateFinalScore();

      List<LessonModal> lessons = [
        LessonModal(lessonName: 'Math', score: 90.5),
        LessonModal(lessonName: 'English', score: 85.0),
        // Add more lessons with their scores
      ];

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ScorePage(
            lessons: lessons,
            mathScore: mathScore,
            englishScore: englishScore,
          ),
        ),
      );
    }
  }

  void _validateFields() {
    bool anyFieldIsEmpty = false;

    if (_mathTextController.text.isEmpty) {
      anyFieldIsEmpty = true;
      _mathTextfieldcolor = ThemeColors.kTextfieledIsEmptyColor;
    }
    if (_englishTextController.text.isEmpty) {
      anyFieldIsEmpty = true;
      _englishTextfieldcolor = ThemeColors.kTextfieledIsEmptyColor;
    }
    if (_kurdiTextController.text.isEmpty) {
      anyFieldIsEmpty = true;
      _kurdishTextfieldcolor = ThemeColors.kTextfieledIsEmptyColor;
    }
    if (_chemistryTextController.text.isEmpty) {
      anyFieldIsEmpty = true;
      _chemistryTextfieldcolor = ThemeColors.kTextfieledIsEmptyColor;
    }
    if (_biologyTextController.text.isEmpty) {
      anyFieldIsEmpty = true;
      _biologyTextfieldcolor = ThemeColors.kTextfieledIsEmptyColor;
    }
    if (_physicTextController.text.isEmpty) {
      anyFieldIsEmpty = true;
      _physicTextfieldcolor = ThemeColors.kTextfieledIsEmptyColor;
    }
    if (_arabicAndAiinTextController.text.isEmpty) {
      anyFieldIsEmpty = true;
      _arabicAndAiinTextfieldcolor = ThemeColors.kTextfieledIsEmptyColor;
    }

    if (anyFieldIsEmpty) {
      setState(() {
        // Trigger a rebuild to update text field colors
        _mathTextfieldcolor = _mathTextfieldcolor;
        _englishTextfieldcolor = _englishTextfieldcolor;
        _kurdishTextfieldcolor = _kurdishTextfieldcolor;
        _chemistryTextfieldcolor = _chemistryTextfieldcolor;
        _biologyTextfieldcolor = _biologyTextfieldcolor;
        _physicTextfieldcolor = _physicTextfieldcolor;
        _arabicAndAiinTextfieldcolor = _arabicAndAiinTextfieldcolor;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: ThemeColors.kTextfieledIsEmptyColor,
          content: Text(
            'تکایە نمرەی وانەکان تۆمار بکە و بە بەتاڵی جێی مەهێڵە',
            textAlign: TextAlign.end,
            style: TextStyle(
              fontFamily: 'rabarBold',
              color: Colors.black,
            ),
          ),
        ),
      );
      return;
    }
  }

  void _dismissKeyboard() {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.kBodyColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: ThemeColors.kWhiteTextColor),
        backgroundColor: ThemeColors.kBodyColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Align(
          alignment: Alignment.centerRight,
          child: Text(
            'تۆمارکردنی نمرەکان',
            style: TextStyle(color: ThemeColors.kWhiteTextColor),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 170,
                  child: MyTextField(
                    textController: _mathTextController,
                    labelText: 'بیرکاری',
                    color: _mathTextfieldcolor,
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: 170,
                  child: MyTextField(
                    textController: _englishTextController,
                    labelText: 'ئینگلیزی',
                    color: _englishTextfieldcolor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 170,
                  child: MyTextField(
                    textController: _kurdiTextController,
                    labelText: 'کوردی',
                    color: _kurdishTextfieldcolor,
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: 170,
                  child: MyTextField(
                    textController: _chemistryTextController,
                    labelText: 'کیمیا',
                    color: _chemistryTextfieldcolor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 170,
                  child: MyTextField(
                    textController: _biologyTextController,
                    labelText: 'زیندەوەرزانی',
                    color: _biologyTextfieldcolor,
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: 170,
                  child: MyTextField(
                    textController: _physicTextController,
                    labelText: 'فیزیا',
                    color: _physicTextfieldcolor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 170,
                  child: MyTextField(
                    textController: _arabicAndAiinTextController,
                    labelText: 'عەرەبی و ئایین',
                    color: _arabicAndAiinTextfieldcolor,
                  ),
                ),
                const SizedBox(width: 20),
                const SizedBox(
                  width: 170,
                  child: null,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            MyButton(
              onPressed: () {
                _dismissKeyboard();
                _validateFields();
                _calculateFinalScore();

                _navigateToScorePage();
              },
            ),
          ],
        ),
      ),
    );
  }
}
