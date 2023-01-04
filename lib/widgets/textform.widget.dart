import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:rescue_ai/constant.dart';

class TextFormWidget extends StatelessWidget {
  const TextFormWidget(
      {Key? key,
      required this.controller,
      required this.text,
      required this.textInputType,
      required this.obscure,
    //  required this.imageIcon,
      })
      : super(key: key);
  final TextEditingController controller;
  final String text;
 // final ImageIcon imageIcon;
  final TextInputType textInputType;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    //var imageIcon;

    return Container(
      padding:  const EdgeInsets.only(top: 0, left: 0),
      height: 55,
      decoration: const BoxDecoration(
        color: rGrey,
        borderRadius:  BorderRadius.all(Radius.circular(6)),
       // border: Border.all(color: const Color(0xFF3CF396), width: 0.9),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: obscure,
        decoration: InputDecoration(
          //contentPadding:const EdgeInsets.all(0),
          enabledBorder: const OutlineInputBorder(
            // width: 0.0 produces a thin "hairline" border
            borderSide: BorderSide(color: rGrey, width: 1.0),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            borderSide: BorderSide(color: Colors.grey, width: 1.0),

          ),

          labelText: text,
        //  prefixIcon: Icon(Icons.imageIcon, color: rGreen,),
          labelStyle: const TextStyle(
            height: 10,
            color: rWhite,
          ),
        ),
      ),
    );
  }
}
