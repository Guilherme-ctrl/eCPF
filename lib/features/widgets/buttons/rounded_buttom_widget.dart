import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedButtomWidget extends StatefulWidget {
  final Color backgroundColor;
  final String label;
  final TextStyle? textStyle;
  final String? image;
  final Function() onPressed;
  const RoundedButtomWidget({super.key, required this.backgroundColor, required this.label, this.textStyle, this.image, required this.onPressed});

  @override
  State<RoundedButtomWidget> createState() => _RoundedButtomWidgetState();
}

class _RoundedButtomWidgetState extends State<RoundedButtomWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        height: 55,
        width: 300,
        decoration: BoxDecoration(color: widget.backgroundColor, borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Center(
          child: Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    widget.label,
                    style: widget.textStyle ?? GoogleFonts.poppins(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
