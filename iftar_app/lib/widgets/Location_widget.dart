import 'package:flutter/material.dart';

Widget Location() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Center(
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image.network(
            'https://placeimg.com/640/480/any',
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: const EdgeInsets.all(5),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 5.0),
        child: Row(
          children: const [
            Icon(IconData(0xe3ab, fontFamily: 'MaterialIcons'),
                size: 12, color: Colors.white),
            Text(" القصبة، الجزائر",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 5.0),
        child: Row(
          children: const [
            Icon(IconData(0xe2eb, fontFamily: 'MaterialIcons'),
                size: 12, color: Colors.white),
            Text(" 50 مفطر",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ),
    ],
  );
}
