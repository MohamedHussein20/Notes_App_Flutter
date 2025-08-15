import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Color(0xff3B3B3B),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(child: Icon(icon, size: 28)),
    );
  }
}
