import 'package:flutter/material.dart';

import '../colors_in.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final double horizontalPadding;
  const SocialButton({
    Key? key,
    required this.iconPath,
    required this.label,
    this.horizontalPadding = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: Icon(Icons.install_mobile),
      onPressed: () {},
      // icon: SvgPicture.asset(
      //   iconPath,
      //   width: 25,
      //   color: Mycolors.whiteColor,
      // ),
      label: Text(
        label,
        style: const TextStyle(
          color: Mycolors.whiteColor,
          fontSize: 17,
        ),
      ),
      style: TextButton.styleFrom(
        padding:
            EdgeInsets.symmetric(vertical: 30, horizontal: horizontalPadding),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Mycolors.borderColor,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
