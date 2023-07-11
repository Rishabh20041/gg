import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/model/catalog.dart';

//import 'pacakage:flutter_application_1/screens/model/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.deepPurpleAccent,
            ),
          ),
          child: GridTile(
            header: Container(
              padding: EdgeInsets.only(bottom: 3),
              child: Text(
                item.name,
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(color: Colors.white),
            ),
            child: Image.network(
              item.image,
            ),
            footer: Container(
              padding: EdgeInsets.only(top: 3),
              child: Text(
                "\$${item.price}",
                textAlign: TextAlign.center,
              ),
            ),
          )),
    );
  }
}