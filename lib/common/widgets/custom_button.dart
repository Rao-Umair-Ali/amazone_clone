import 'package:amazone_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.name, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        shape: BeveledRectangleBorder(),
      ),

      onPressed: onTap,
      child: Text(
        name,
        style: TextStyle(fontSize: 16, color: GlobalVariables.backgroundColor),
      ),
    );
  }
}
