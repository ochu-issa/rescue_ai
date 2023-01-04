import 'package:flutter/material.dart';
import 'package:rescue_ai/constant.dart';
import 'package:rescue_ai/widgets/textform.widget.dart';

class RecoverPassword extends StatelessWidget {
  RecoverPassword({Key? key}) : super(key: key);
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
            Navigator.pushNamed(context, 'forgetpasswordpage');
          },
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: const Text('Change password', ),
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
                      const SizedBox(
                        height: 25,
                      ),
                      TextFormWidget(
                          controller: passwordController,
                          text: 'Enter new password',
                          textInputType: TextInputType.text,
                          obscure: true),
                      const SizedBox(
                        height: 25,
                      ),
                      TextFormWidget(
                          controller: confirmpwdcontroller,
                          text: 'Confirm new password',
                          textInputType: TextInputType.text,
                          obscure: true),
                      const SizedBox(
                        height: 25,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, 'loginview');
                        },
                        child: Center(
                          child: Container(
                            alignment: Alignment.center,
                            //padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            height: 55,
                            width: double.infinity,
                            decoration:  const BoxDecoration(
                              gradient: LinearGradient(
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
                              'Send code',
                              style: TextStyle(
                                fontSize: 18,
                                color: backgroundColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
