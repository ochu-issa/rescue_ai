import 'package:flutter/material.dart';
import 'package:rescue_ai/constant.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text(
          'Welcome back!',
          style: TextStyle(fontWeight: FontWeight.bold, color: rGreen),
        ),
        automaticallyImplyLeading: true,
        backgroundColor: primaryColor,
      ),
      body: Column(
        children: [
          Container(
            padding: myPadding,
            child: const Text(
              'Login through your account with',
              style: TextStyle(
                  fontWeight: FontWeight.normal, color: rGreen, fontSize: 17),
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          //icons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  color: rGrey,
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: backgroundColor.withOpacity(0.8),
                      // color: Colors.black.withOpacity(0.9),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Image.asset('assets/images/google.png'),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  color: rGrey,
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                     // color: backgroundColor.withOpacity(0.2),
                      color: Colors.black.withOpacity(0.09),
                      spreadRadius: 2,
                      blurRadius: 1,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Image.asset('assets/images/apple.png'),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                height: MediaQuery.of(context).size.height * 0.006,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: const BoxDecoration(
                  color: rGrey,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
              const Text(
                'or sign up here!',
                style: myFontStyle,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                height: MediaQuery.of(context).size.height * 0.006,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: const BoxDecoration(
                  color: rGrey,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Column(
            children: [
              Container(
                //spadding: myPadding,
                padding: myPadding,
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.90,
                decoration: BoxDecoration(
                  //color: const Color(0xFF3CF396),
                  border:
                      Border.all(color: const Color(0xFF3CF396), width: 1.5),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const TextField(
                  //style: TextStyle(color: rGreen),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter your Email'
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                //spadding: myPadding,
                padding: myPadding,
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.90,
                decoration: BoxDecoration(
                  //color: const Color(0xFF3CF396),
                  border:
                  Border.all(color: const Color(0xFF3CF396), width: 1.5),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const TextField(
                  //style: TextStyle(color: rGreen),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your Email'
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                //spadding: myPadding,
                padding: myPadding,
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.90,
                decoration: BoxDecoration(
                  //color: const Color(0xFF3CF396),
                  border:
                  Border.all(color: const Color(0xFF3CF396), width: 1.5),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const TextField(
                  //style: TextStyle(color: rGreen),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your Email'
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
