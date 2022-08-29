import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xff292c31),
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
        border: Border.all(
          color: const Color.fromARGB(255, 57, 60, 62),
          width: 2.0,
        ),
        gradient: const RadialGradient(
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
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color(0xff292c31),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [0, 0.45],
            colors: [
              const Color(0xff292c31).withOpacity(0),
              const Color(0xff292c31)
            ],
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0xff292C31),
              blurRadius: 10.0, // soften the shadow
              spreadRadius: 5.0, //extend the shadow
              offset: Offset(
                -1.0, // Move to right 10  horizontally
                -1.0, // Move to bottom 10 Vertically
              ),
            ),
            BoxShadow(
              color: Color(0xff292C31),
              blurRadius: 10.0, // soften the shadow
              spreadRadius: 5.0, //extend the shadow
              offset: Offset(
                1.0, // Move to right 10  horizontally
                1.0, // Move to bottom 10 Vertically
              ),
            ),
          ],
        ),
        child: Icon(
          icon,
          color: const Color.fromARGB(255, 112, 117, 125),
        ),
      ),
    );
  }
}
