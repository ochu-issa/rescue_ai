import 'package:flutter/material.dart';
import 'package:rescue_ai/constant.dart';
import 'package:rescue_ai/widgets/button.widget.dart';
import 'package:rescue_ai/widgets/social.widget.dart';
import 'package:rescue_ai/widgets/textform.widget.dart';
import 'package:rescue_ai/widgets/textpwd.widget.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(

          child: SafeArea(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20,),
                  const SizedBox( height: 70, ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/rescue_logo.png',
                        width: MediaQuery.of(context).size.height * 0.2,
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      //email Addresss
                      TextFormWidget(
                        controller: emailController,
                        text: 'Enter your email',
                        obscure: false,
                        textInputType: TextInputType.emailAddress,

                      ),
                      const SizedBox(height: 20,),

                      //Password
                      TextFormWidget(
                        controller: passwordController,
                        text: 'Enter your password',
                        obscure: true,

                        textInputType: TextInputType.text,
                      ),
                    ],
                  ),
                  const SizedBox(height: 25,),
                  Container(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: (){Navigator.pushNamed(context, 'forgetpasswordpage');},
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: rWhite,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25,),
                  const ButtonWidget(),

                  const SizedBox(height: 30,),
                  const SocialWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: backgroundColor,
        height: 50,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const Text('Don\'t have an account?', style: TextStyle(
              color: rWhite,
              fontWeight:  FontWeight.normal,
            ),
            ),
            const SizedBox(width: 5,),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'registerpage');
              },
              child: const Text('REGISTER', style: TextStyle(
                color: rGreen,
                fontWeight:  FontWeight.bold,
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
