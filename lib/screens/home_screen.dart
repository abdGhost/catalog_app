import 'dart:convert';

import 'package:catelog_app/models/catalog.dart';
import 'package:catelog_app/utils/widgets/drawer.dart';
import 'package:catelog_app/utils/widgets/item_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];

    CatalogModel.items =
        List.from(productsData).map((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog App'),
      ),
      drawer: MyDrawer(),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
              ? ListView.builder(
                  itemCount: CatalogModel.items!.length,
                  itemBuilder: (context, index) {
                    return ItemWidgets(
                      item: CatalogModel.items![index],
                    );
                  },
                )
              : const Center(
                  child: CircularProgressIndicator(),
                )),
    );
  }
}
