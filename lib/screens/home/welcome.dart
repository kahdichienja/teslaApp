import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telsaapp/screens/home/homescreen.dart';
import 'package:telsaapp/widget/custom_button.dart';

// copy from splash
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

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
              Color(0xff2A2D32),
              Color(0xff26282D),
              Color(0xff161719),
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
                children: [
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    child: const CustomButton(icon:  CupertinoIcons.settings),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Hi",
              style: TextStyle(
                  color: Color.fromARGB(255, 113, 122, 136),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Welcome Back",
              style: TextStyle(
                  color: Color.fromARGB(255, 238, 240, 241),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/img/welcome.png'),
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
                      Color.fromARGB(255, 14, 14, 15),
                      Color.fromARGB(255, 26, 28, 31),
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "lock",
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
                            CupertinoIcons.lock,
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
