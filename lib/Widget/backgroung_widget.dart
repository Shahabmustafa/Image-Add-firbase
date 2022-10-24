import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  const BackgroundWidget({required this.child,required this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/bg.jpeg'),fit: BoxFit.fill)
      ),
      child: child,
    );
  }
}
