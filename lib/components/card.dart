import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: const Color(0xFF5FCCA0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              'assets/list.png',
              height: 24,
              color: Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "ڕیزبەندی",
              style: TextStyle(
                fontFamily: 'rabarBold',
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
