import 'package:flutter/material.dart';
import 'package:rescue_ai/constant.dart';
import 'package:rescue_ai/widgets/button.widget.dart';
import 'package:rescue_ai/widgets/social.widget.dart';
import 'package:rescue_ai/widgets/textform.widget.dart';
import 'package:rescue_ai/widgets/textpwd.widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController username = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpwdcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, 'loginview');
          },
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: const Text('Create Account', ),
        backgroundColor: backgroundColor,
      ),
      body: GestureDetector(
        onTap: (){FocusScope.of(context).requestFocus(FocusNode());},
        child: SingleChildScrollView(

          child: SafeArea(

            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 25,),
                      //username
                      TextFormWidget(
                        controller: emailController,
                        text: 'User name',
                        obscure: false,
                        textInputType: TextInputType.text,
                      ),

                      const SizedBox(height: 20,),

                      //email Addresss
                      TextFormWidget(
                        controller: emailController,
                        text: 'Email',
                        obscure: false,
                        textInputType: TextInputType.emailAddress,
                      ),

                      const SizedBox(height: 20,),

                      //Password
                      TextFormWidget(
                        controller: passwordController,
                        text: 'Password',
                        obscure: true,
                        textInputType: TextInputType.text,
                      ),

                      const SizedBox(height: 20,),

                      //Password
                      TextFormWidget(
                        controller: confirmpwdcontroller,
                        text: 'Confirm Password',
                        obscure: true,
                        textInputType: TextInputType.text,
                      ),
                    ],
                  ),
                  const SizedBox(height: 25,),

              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'otppage');
                },
                child: Center(
                  child: Container(
                    alignment: Alignment.center,
                    //padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    height: 55,
                    width: double.infinity,
                    decoration:  const BoxDecoration(
                        gradient:  LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color(0xFF46B767),
                            Color(0xFF317f45),
                          ],
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),

                    ),
                    child: const Text(
                      'Sign up',
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
            const Text('You have an account?', style: TextStyle(
              color: rWhite,
              fontWeight:  FontWeight.normal,
            ),
            ),
            const SizedBox(width: 5,),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'loginview');
              },
              child: const Text('SIGN IN', style: TextStyle(
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
