import 'package:flutter/material.dart';
class c extends StatelessWidget {
  c({@required this.colour, this.w,this.f});
  final Color colour;
  final Widget w;
  final Function f;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: f,
      child: Container(

          child: w,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: colour, borderRadius: BorderRadius.circular(10.0))),
    );
  }
}

