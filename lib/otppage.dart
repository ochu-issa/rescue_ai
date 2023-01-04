import 'package:flutter/material.dart';
import 'package:rescue_ai/constant.dart';
import 'package:rescue_ai/widgets/button.widget.dart';
import 'package:rescue_ai/widgets/social.widget.dart';
import 'package:rescue_ai/widgets/textform.widget.dart';
import 'package:rescue_ai/widgets/textpwd.widget.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OtpPage extends StatelessWidget {
  OtpPage({Key? key}) : super(key: key);
  final TextEditingController OTP1Controller = TextEditingController();
  final TextEditingController OTP2Controller = TextEditingController();
  final TextEditingController OTP3Controller = TextEditingController();
  final TextEditingController OTP4Controller = TextEditingController();
  //final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, 'registerpage');
          },
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: const Text('Create Account', ),
        backgroundColor: backgroundColor,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      // Container(
                      SizedBox(height: 15,),
                      Text(
                        'We have sent you OTP to your e-mail address for verification.',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: rWhite,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      // ),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                  //email Addresss
                  Row(
                    children: [
                      Expanded(
                        child: OTPTextField(
                          length: 4,
                          width: MediaQuery.of(context).size.width,
                          fieldWidth: 80,
                          style: const TextStyle(
                              fontSize: 17,
                              color: rWhite,
                          ),
                          textFieldAlignment: MainAxisAlignment.spaceAround,
                          fieldStyle: FieldStyle.underline,
                          onCompleted: (pin) {
                           // print("Completed: " + pin);
                            Navigator.pushNamed(context, 'loginview');
                          },
                        ),
                      ),
                    ],
                  ),

                  const SizedBox( height: 25,),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'loginview');
                    },
                    child: Center(
                      child: Container(
                        alignment: Alignment.center,
                        //padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        height: 55,
                        width: double.infinity,
                        decoration: BoxDecoration(
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
                            ]),
                        child: const Text(
                          'Verify',
                          style: TextStyle(
                            fontSize: 18,
                            color: backgroundColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Din\'t recieve the OTP?',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            color: rWhite,
                          ),
                        ),
                        const SizedBox(height: 5,),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'registerpage');
                          },
                          child: const Text(
                            'SEND AGAIN',
                            style: TextStyle(
                              color: rGreen,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
