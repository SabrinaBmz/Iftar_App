import 'package:flutter/material.dart';
import 'package:iftar_app/widgets/Location_widget.dart';

// ignore: non_constant_identifier_names
Widget LocationListWidget() {
  return Container(
    height: 150,
    decoration: const BoxDecoration(
        border: Border(
            top: BorderSide(color: Colors.white),
            bottom: BorderSide(color: Colors.white))),
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Container(
            width: 130,
            height: 50,
            color: const Color.fromARGB(255, 248, 248, 255),
            child: Card(
              color: const Color.fromARGB(255, 55, 94, 151),
              elevation: 4,
              child: Location(),
            ),
          );
        }),
  );
}
