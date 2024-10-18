import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed; 

  const MyButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey.shade200,
      ),
      onPressed: () {
        onPressed();
      },
      child: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
