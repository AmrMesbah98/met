import 'package:flutter/material.dart';

import 'constants/constants.dart';

class DefaultButtonLecturer extends StatelessWidget {
  const DefaultButtonLecturer({
    Key? key,
    required this.text,
    required this.onPressed,
    this.width,
    this.height,
  }) : super(key: key);
  final String text;
  final double? width;
  final double? height;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height ?? 60,
      decoration: BoxDecoration(
        color: defaultColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: MaterialButton(
        onPressed: () {
          onPressed();
        },
        child: Text(
          text,
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: whiteColor,
                fontWeight: FontWeight.w600,
                fontFamily: 'ping',
              ),
        ),
      ),
    );
  }
}
