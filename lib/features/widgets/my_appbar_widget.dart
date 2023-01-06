import 'package:flutter/material.dart';
import 'package:kheloo/features/utils/styles.dart';

class MyAppbarWidget extends StatelessWidget {
  const MyAppbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
          height: 60,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          color: Colors.black,
          child: Image.asset(
            'assets/images/logo.gif',
            height: 60,
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 60,
        alignment: Alignment.center,
        color: Colors.orange[300],
        child: Text(
          'LOGIN',
          style: tsS16W500CFFF,
        ),
      )
    ]);
  }
}
