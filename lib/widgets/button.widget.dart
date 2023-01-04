import 'package:flutter/material.dart';
import 'package:rescue_ai/constant.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print('print button');
      },
      child: Center(
        child: Container(
          alignment: Alignment.center,
          //padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 55,
          width: double.infinity,
          decoration:  BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xFF46B767),
                Color(0xFF317f45),
              ],
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(6),
            ),
            boxShadow: [
              BoxShadow(
                color: rGrey.withOpacity(0.1),
                blurRadius: 10,
              ),
            ]
          ),
          child: const Text(
            'Sign in',
            style: TextStyle(
              fontSize: 18,
              color: backgroundColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
