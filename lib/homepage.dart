import 'package:flutter/material.dart';
import 'package:rescue_ai/constant.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
   // precacheImage(const AssetImage("assets/images/cartoon.png"), context);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
               Image.asset('assets/images/cartoon.png',),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(10),
                child: const  Text(
                  'Join and make your study easy!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xFF3CF396),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Unlock your learning Potential with our App! \n Rescue Ai we got your back!',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      color: Color(0xFF3CF396),),
                  textAlign: TextAlign.center,
                ),

              ),

              const SizedBox(height: 50,),
              Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, 'loginview');
                    },
                    child: Container(
                      //padding: const EdgeInsets.all(18),
                      alignment: Alignment.center,
                       height: MediaQuery.of(context).size.height * 0.066,
                       width: MediaQuery.of(context).size.width * 0.90,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color(0xFF3CF396),
                              Color(0xFF3CF365),
                            ],
                          ),
                         // color: Color(0xFF3CF396),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: const Text(
                        'Login to your account',
                        style: TextStyle(color: Color(0xFF192325), fontSize: 18, fontWeight: FontWeight.bold, ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25,),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, 'registerpage');
                    },
                    child: Container(
                      alignment: Alignment.center,
                     // padding: myPadding,
                      height: MediaQuery.of(context).size.height * 0.066,
                      width: MediaQuery.of(context).size.width * 0.90,
                      decoration: BoxDecoration(

                          //color: const Color(0xFF3CF396),
                          border: Border.all(color: const Color(0xFF3CF396), width: 1.5),
                          borderRadius: const BorderRadius.all(Radius.circular(10)),

                      ),
                      child: const Text(
                        'Register here',
                        style: TextStyle(color: Color(0xFF3CF396), fontSize: 16, fontWeight: FontWeight.bold, ),
                        textAlign: TextAlign.center,
                      ),

                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
