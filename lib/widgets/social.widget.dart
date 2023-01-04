import 'package:flutter/material.dart';
import 'package:rescue_ai/constant.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
         // height: MediaQuery.of(context).size.height * 0.06,
          alignment: Alignment.center,
          child: const Text(
            '- or sign in with - ',
            style: TextStyle(
              fontSize: 18,
              color: rWhite ,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 20,),
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          child: Row(

            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                    color: rGrey,
                    boxShadow: [
                      BoxShadow(
                        color: rGrey.withOpacity(.1),
                        blurRadius: 10,
                      ),
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Image.asset('assets/images/google.png', height: 25,),
                ),
              ),

              const SizedBox(width: 20,),

              //apple icons
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: const BoxDecoration(
                    color: rGrey,
                    borderRadius:  BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Image.asset('assets/images/apple.png', height: 25,),
                ),
              ),

            ],
          ),
        )
      ],
    );
  }
}
