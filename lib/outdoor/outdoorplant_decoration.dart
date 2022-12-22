import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'catalogo.dart';
import 'outdoor_Plantdetail.dart';

class OutdoorPlantD extends StatefulWidget {
  const OutdoorPlantD({super.key});

  @override
  State<OutdoorPlantD> createState() => _OutdoorPlantDState();
}

class _OutdoorPlantDState extends State<OutdoorPlantD> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalogo.json");
    final decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogModelO.items = List.from(productData)
        .map<Itemo>((item) => Itemo.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: unnecessary_null_comparison
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: (CatalogModelO.items != null && CatalogModelO.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 250,
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 10),
                itemBuilder: (context, index) {
                  final catalog = CatalogModelO.items[index];
                  return InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlantDetailPageO(
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
                                border: Border.all(color: Colors.redAccent),
                                borderRadius: BorderRadius.circular(18),
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
                itemCount: CatalogModelO.items.length,
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
