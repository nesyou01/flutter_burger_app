import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final Widget child;
  final Gradient? gradient;
  final void Function() onPressed;

  const GradientButton({
    Key? key,
    required this.child,
    this.gradient,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFE1D24A),
            Color(0xFFC69223),
          ],
          begin: Alignment.topLeft,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: onPressed,
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
