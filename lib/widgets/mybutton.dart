import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String label;
  final String backcolor;  
  final String color;     
  final double width;
  final double height;
  final double raduis;

  const MyButton({
    super.key,
    required this.backcolor,
    required this.color,
    required this.label,
    required this.height,
    required this.width,
    required this.raduis,
  });

  Color hexToColor(String hex) {
    hex = hex.replaceAll('#', '');  
    if (hex.length == 6) hex = 'FF$hex';  
    return Color(int.parse(hex, radix: 16));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: hexToColor(backcolor),
        borderRadius: BorderRadius.circular(raduis),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: hexToColor(color),
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}
