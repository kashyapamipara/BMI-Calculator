import 'package:flutter/material.dart';
import 'constant.dart';
class IconContext extends StatelessWidget {

  IconContext({this.i,this.l});
  final IconData i;
  final String l;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          i,
          size: 70.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          l,
          style:ls
        ),
      ],
    );
  }
}

