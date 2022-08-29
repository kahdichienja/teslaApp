import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telsaapp/screens/home/homescreen.dart';
import 'package:telsaapp/widget/constants.dart';
import 'package:telsaapp/widget/custom_button.dart';
import 'package:telsaapp/widget/neuomorphic_circle.dart';
import 'package:telsaapp/widget/progress_ring.dart';

class ClimateScreen extends StatefulWidget {
  const ClimateScreen({Key? key}) : super(key: key);

  @override
  State<ClimateScreen> createState() => _ClimateScreenState();
}

class _ClimateScreenState extends State<ClimateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff2A2D32),
              Color(0xff131313),
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child:
                        const CustomButton(icon: CupertinoIcons.chevron_back),
                  ),
                  Text(
                    "Climate".toUpperCase(),
                    style: const TextStyle(
                      color: Color.fromARGB(255, 207, 210, 216),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    child: const CustomButton(icon: CupertinoIcons.settings),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(70.0),
              child: AspectRatio(
                aspectRatio: 1,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    NeuomorphicCircle(
                      shadowColor: Constants.shadowColor,
                      backgroundColor: Constants.backgroundColor,
                      highlightColor: Constants.highlightColor,
                      innerShadow: true,
                      outerShadow: false,
                      child: const SizedBox.shrink(),
                    ),
                    LayoutBuilder(builder: (context, constraints) {
                      return SizedBox(
                        width: constraints.maxWidth * 0.25,
                        height: constraints.maxWidth * 0.3,
                        child: NeuomorphicCircle(
                          innerShadow: false,
                          outerShadow: true,
                          highlightColor: Constants.highlightColor,
                          shadowColor: Constants.shadowColor,
                          backgroundColor: Constants.backgroundColor,
                          child: SizedBox.expand(
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "${double.parse(value.toStringAsFixed(1)) * 100}˚C",
                                  style: const TextStyle(
                                      color: Colors.white60,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                    ProgressRing(
                        progress: (double.parse(value.toStringAsFixed(1))))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Row(
                children: [
                  const Text(
                    "Ac",
                    style: TextStyle(
                        color: Colors.white60, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  InkWell(
                    onTap: () {
                      _showBottomSheet();
                    },
                    child: const CustomButton(
                      icon: Icons.ac_unit,
                      color: Color(0xff2FB8FF),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Slider(
                      value: value,
                      onChanged: (val) => setState(() => value = val),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
              child: Row(
                children: [
                  const Text(
                    "Fan",
                    style: TextStyle(
                        color: Colors.white60, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const CustomButton(
                    icon: CupertinoIcons.wind,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Slider(
                      value: 0.0,
                      onChanged: (val) => setState(() {}),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
              child: Row(
                children: [
                  const Text(
                    "Heat",
                    style: TextStyle(
                        color: Colors.white60, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const CustomButton(
                    icon: CupertinoIcons.thermometer,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Slider(
                      value: 0.0,
                      onChanged: (val) => setState(() {}),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
              child: Row(
                children: [
                  const Text(
                    "Auto",
                    style: TextStyle(
                        color: Colors.white60, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const CustomButton(
                    icon: Icons.av_timer,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Slider(
                      value: 0.0,
                      onChanged: (val) => setState(() {}),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  double value = 0.6;

  void increament() => setState(() => (value + 0.1));
  void decreament() => setState(() => (value - 0.1));

  _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
          decoration: BoxDecoration(
            // color: Colors.white
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                const Color.fromARGB(255, 32, 33, 34).withOpacity(0.7),
                const Color.fromARGB(255, 42, 65, 71).withOpacity(0.5),
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        CupertinoIcons.power,
                        color: Colors.blueAccent,
                      ),
                      InkWell(
                        onTap: () {
                          decreament();
                        },
                        child: const Icon(
                          CupertinoIcons.chevron_back,
                          color: Colors.white60,
                        ),
                      ),
                      Text(
                        "${double.parse(value.toStringAsFixed(1)) * 100}˚C",
                        style: const TextStyle(
                            color: Colors.white60, fontWeight: FontWeight.w600),
                      ),
                      InkWell(
                        onTap: () => increament(),
                        child: const Icon(
                          CupertinoIcons.chevron_forward,
                          color: Colors.white60,
                        ),
                      ),
                      const Icon(
                        Icons.note,
                        color: Colors.white60,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "On",
                        style: TextStyle(
                            color: Colors.white60, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Vent",
                        style: TextStyle(
                            color: Colors.white60, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
