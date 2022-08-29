import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telsaapp/screens/home/welcome.dart';
import 'package:telsaapp/widget/custom_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff292C31),
              Color(0xff292C31),
              Color(0xff000000),
              Color(0xff000000),
              Color(0xff17181A),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: const [
                  Spacer(),
                  CustomButton(icon: CupertinoIcons.settings),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/img/splash.png'),
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 180,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xff17171C),
                      Color(0xff18191B),
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Unlock",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WelcomeScreen(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 60, 60, 68),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                            gradient: RadialGradient(
                              colors: [
                                Color.fromARGB(255, 51, 53, 56),
                                Color(0xff292C31),
                              ],
                              center: AlignmentDirectional(0.05, 0.05),
                              focal: AlignmentDirectional(0, 0),
                              radius: 0.5,
                              focalRadius: 0,
                              stops: [0.75, 1.0],
                            ),
                          ),
                          child: const Icon(
                            CupertinoIcons.lock_open,
                            color: Colors.lightBlueAccent,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
