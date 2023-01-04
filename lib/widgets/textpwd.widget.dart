import 'package:flutter/material.dart';
import 'package:rescue_ai/constant.dart';

class TextPwdWidget extends StatelessWidget {
  const TextPwdWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 55,
      decoration: BoxDecoration(
        color: rGrey,
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        boxShadow: const [
          BoxShadow(
            color: rGrey,
            blurRadius: 7,
          ),
        ],
        border: Border.all(color: const Color(0xFF3CF396), width: 0.9),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(0),
          border: InputBorder.none,
          hintText: 'Enter your password',
          hintStyle: TextStyle(
            height: 1,
            color: rGreen,
          ),
        ),
      ),
    );
  }
}
