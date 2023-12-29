// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../colors_in.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String name;
  const GradientButton({
    Key? key,
    required this.onPressed,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Mycolors.gradient1,
            Mycolors.gradient2,
            Mycolors.gradient3,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(340, 55),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          child: Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
