import 'package:flutter/material.dart';

import 'catalogi.dart';

class PlantDetailPageI extends StatelessWidget {
  final Itemi catalog;
  const PlantDetailPageI({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 400,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(75),
                          bottomRight: Radius.circular(75)),
                      image: DecorationImage(
                          image: AssetImage(catalog.image),
                          fit: BoxFit.fitWidth))),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(children: [
                      const SizedBox(
                        width: 100,
                        child: Text(
                          "Name:",
                          style: TextStyle(
                            fontFamily: 'hello',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          catalog.name,
                          style: const TextStyle(
                            fontFamily: 'hello',
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const SizedBox(
                          width: 100,
                          child: Text(
                            "Origin:",
                            style: TextStyle(
                              fontFamily: 'hello',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            catalog.origin,
                            style: const TextStyle(
                              fontFamily: 'hello',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          child: Text(
                            "Description:",
                            style: TextStyle(
                              fontFamily: 'hello',
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            catalog.desc,
                            style: TextStyle(
                              fontFamily: 'hello',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          child: Text(
                            "Temperature:",
                            style: TextStyle(
                              fontFamily: 'hello',
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            catalog.temperature,
                            style: TextStyle(
                              fontFamily: 'hello',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          child: Text(
                            "Light:",
                            style: TextStyle(
                              fontFamily: 'hello',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            catalog.light,
                            style: TextStyle(
                              fontFamily: 'hello',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          child: Text(
                            "Water:",
                            style: TextStyle(
                              fontFamily: 'hello',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            catalog.water,
                            style: TextStyle(
                              fontFamily: 'hello',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          child: Text(
                            "Soil:",
                            style: TextStyle(
                              fontFamily: 'hello',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            catalog.soil,
                            style: TextStyle(
                              fontFamily: 'hello',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
