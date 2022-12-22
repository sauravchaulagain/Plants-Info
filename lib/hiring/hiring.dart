import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../planbox.dart';

class Hiring extends StatefulWidget {
  @override
  State<Hiring> createState() => _HiringState();
}

class _HiringState extends State<Hiring> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(3.5),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      CupertinoIcons.back,
                      size: 40,
                    ),
                  ),
                ],
              ),
              Image.asset('assets/gardener.png', width: 220),
              Text(
                'Need a Gardener?',
                style: TextStyle(
                  fontFamily: 'hello',
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Colors.deepOrange,
                ),
              ),
              Text(
                'Hire a gardener for your garden.Here at PlantsInfo, we provide you with highly experienced & professional gardener.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'hello',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              PlanBox(),
            ],
          ),
        ),
      ),
    );
  }
}
