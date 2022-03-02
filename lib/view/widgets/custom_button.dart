import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final GestureTapCallback onPressed;
  final Color color;

  const CustomButton({Key? key,
    required this.label,
    required this.onPressed,
    required this.color,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: const Color.fromRGBO(45, 28, 71, 100),
        shadowColor: Colors.black,
        elevation: 2,

        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2.0)),
          side: BorderSide(color: Colors.black),
        ),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 14.0,
          color: Colors.white,
        ),
      ),
    );
  }
}