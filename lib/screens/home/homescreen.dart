import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telsaapp/widget/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 19, 19),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff2A2D32),
        onPressed: () {},
        child: const Icon(Icons.add, size: 50, color: Color.fromARGB(255, 15, 104, 177),)
        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: 0,
        blurEffect: true,
        splashColor: const Color.fromARGB(255, 15, 104, 177),
        splashRadius:  10,
        activeColor: const Color.fromARGB(255, 15, 104, 177),
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        inactiveColor:const Color.fromARGB(255, 120, 126, 134),
        rightCornerRadius: 32,
        backgroundColor: const Color(0xff2A2D32),
        onTap: (index) => (() => index),
        //other params
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(48, 0, 0, 0),
              offset: Offset(36.0, 40.0),
              blurRadius: 56.0,
            )
          ],
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient:  LinearGradient(
              begin: Alignment(0.0, -1.0),
              end: Alignment(0.0, 0.9999999999999998),
              stops: [0.0, 0.991706132888794],
              colors: [
                Color.fromARGB(255, 42, 44, 50),
                Color.fromARGB(255, 19, 19, 19)
              ],
            ),
          ),
          child: ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 28.0, right: 28.0, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Tesla",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: const [
                            Icon(
                              CupertinoIcons.battery_25,
                              size: 25,
                              color: Color.fromARGB(255, 100, 98, 98),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text("89 Km",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 100, 98, 98),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600)),
                          ],
                        )
                      ],
                    ),
                    const CustomButton(icon: Icons.person)
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/img/tesla.png'),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Container(
                  height: 100,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                    color: Color(0xff27282A),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 81, 84, 88),
                        blurRadius: 20.0, // soften the shadow
                        spreadRadius: 10.0, //extend the shadow
                        offset: Offset(
                          -10.0, // Move to right 10  horizontally
                          -10.0, // Move to bottom 10 Vertically
                        ),
                      ),
                      BoxShadow(
                        color: Color.fromARGB(255, 12, 12, 12),
                        blurRadius: 20.0, // soften the shadow
                        spreadRadius: 10.0, //extend the shadow
                        offset: Offset(
                          10.0, // Move to right 10  horizontally
                          10.0, // Move to bottom 10 Vertically
                        ),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      _icons.length,
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _icons[index],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xff3C4348),
                        Color(0xff1C1E21),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 81, 84, 88),
                        blurRadius: 0.0, // soften the shadow
                        spreadRadius: -10.0, //extend the shadow
                        offset: Offset(
                          -10.0, // Move to right 10  horizontally
                          -10.0, // Move to bottom 10 Vertically
                        ),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        ListTile(
                          leading: Icon(
                            CupertinoIcons.car_detailed,
                            color: Color.fromARGB(255, 153, 148, 148),
                          ),
                          title: Text(
                            "Control",
                            style: TextStyle(
                              color: Color.fromARGB(255, 153, 148, 148),
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: Color.fromARGB(255, 100, 98, 98),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.filter_vintage,
                            color: Color.fromARGB(255, 153, 148, 148),
                          ),
                          subtitle: Text(
                            "Interior 20˚C",
                            style: TextStyle(
                              color: Color.fromARGB(255, 100, 98, 98),
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          title: Text(
                            "Climate",
                            style: TextStyle(
                              color: Color.fromARGB(255, 153, 148, 148),
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: Color.fromARGB(255, 153, 148, 148),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            CupertinoIcons.location_fill,
                            color: Color.fromARGB(255, 132, 129, 129),
                          ),
                          subtitle: Text(
                            "New Jersey",
                            style: TextStyle(
                              color: Color.fromARGB(255, 100, 98, 98),
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          title: Text(
                            "Location",
                            style: TextStyle(
                              color: Color.fromARGB(255, 153, 148, 148),
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: Color.fromARGB(255, 100, 98, 98),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  final List<IconData> iconList = const [
    CupertinoIcons.car_detailed,
    CupertinoIcons.bolt,
    CupertinoIcons.location_fill,
    CupertinoIcons.person_fill,
  ];

  final List<Icon> _icons = const [
    Icon(
      CupertinoIcons.lock_fill,
      color: Color.fromARGB(255, 132, 129, 129),
    ),
    Icon(
      Icons.filter_vintage,
      color: Color.fromARGB(255, 132, 129, 129),
    ),
    Icon(
      CupertinoIcons.bolt,
      color: Color.fromARGB(255, 132, 129, 129),
    ),
    Icon(
      CupertinoIcons.car_detailed,
      color: Color.fromARGB(255, 132, 129, 129),
    ),
  ];
}
