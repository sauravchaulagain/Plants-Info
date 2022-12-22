import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Backk extends StatelessWidget {
  const Backk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(CupertinoIcons.back)),
    );
  }
}
