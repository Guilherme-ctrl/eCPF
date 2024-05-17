import 'package:flutter/material.dart';

class DividerWidget extends StatefulWidget {
  final String label;
  const DividerWidget({super.key, required this.label});

  @override
  State<DividerWidget> createState() => _DividerWidgetState();
}

class _DividerWidgetState extends State<DividerWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width * .35,
          decoration: BoxDecoration(color: Color(0xff757575)),
        ),
        SizedBox(width: 8),
        Text(widget.label),
        SizedBox(width: 8),
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width * .35,
          decoration: BoxDecoration(color: Color(0xff757575)),
        ),
      ],
    );
  }
}
