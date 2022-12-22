import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Indoor_Plantdetail.dart';
import 'catalogi.dart';

class IndoorPlantD extends StatefulWidget {
  const IndoorPlantD({super.key});

  @override
  State<IndoorPlantD> createState() => _IndoorPlantDState();
}

class _IndoorPlantDState extends State<IndoorPlantD> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogModelI.items = List.from(productData)
        .map<Itemi>((item) => Itemi.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: unnecessary_null_comparison
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: (CatalogModelI.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 250,
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 10),
                itemBuilder: (context, index) {
                  final catalog = CatalogModelI.items[index];
                  return InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlantDetailPageI(
                          catalog: catalog,
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: 220,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                border: Border.all(color: Colors.blue),
                                image: DecorationImage(
                                    image: AssetImage(catalog.image),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Text(
                          catalog.name,
                          style: const TextStyle(
                            fontFamily: 'hello',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.deepPurple,
                          ),
                        )
                      ],
                    ),
                  );
                },
                itemCount: CatalogModelI.items.length,
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
