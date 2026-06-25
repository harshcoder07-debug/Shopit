import 'package:flutter/material.dart';

class AuthTabButton extends StatelessWidget {
  final String title;
  final bool selected;
  final VoidCallback onTap;

  const AuthTabButton({
    super.key,
    required this.title,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: AnimatedContainer(
          
          duration: const Duration(milliseconds: 500),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: selected
                ? Border.all(color: const Color(0xFF7208E4))
                : Border.all(color: Colors.transparent),
            color: selected ? const Color.fromARGB(255, 255, 255, 255) :  const Color.fromARGB(0, 255, 255, 255),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            title,
            style: TextStyle(
              color: selected ? const Color(0xFF7208E4) : Colors.black,
              fontWeight: selected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
