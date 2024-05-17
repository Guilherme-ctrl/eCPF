import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  final Color? color;

  const Background({
    super.key,
    required this.child,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color ?? Color(0x0039445a),
      resizeToAvoidBottomInset: false,
      body: Container(
        color: color ?? Color(0x0039445a),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // Positioned(
            //   bottom: 0,
            //   right: 0,
            //   child: Image.asset(bottomImage, width: 120),
            // ),
            SafeArea(child: child),
          ],
        ),
      ),
    );
  }
}
