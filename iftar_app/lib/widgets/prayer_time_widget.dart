import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget PrayerTimeWidget(
    List<String> prayername, List<String> prayer, var color, var icon) {
  return Container(
    height: 100,
    decoration: const BoxDecoration(
        border: Border(
            top: BorderSide(color: Colors.white),
            bottom: BorderSide(color: Colors.white))),
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: prayername.length,
        itemBuilder: (context, index) {
          return Container(
            width: 131,
            height: 50,
            color: const Color.fromARGB(255, 248, 248, 255),
            child: Card(
              color: color[index],
              elevation: 4,
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(
                            IconData(icon[index][0],
                                fontFamily: 'MaterialIcons'),
                            size: 15,
                            color: Colors.white),
                      ),
                      if (icon[index][1] != null)
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Icon(
                              IconData(icon[index][1],
                                  fontFamily: 'MaterialIcons'),
                              size: 15,
                              color: Colors.white),
                        ),
                    ],
                  ),
                  Text(prayername[index],
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: "Changa",
                        fontWeight: FontWeight.bold,
                      )),
                  Text(prayer[index],
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: "Changa",
                        fontWeight: FontWeight.bold,
                      )),
                ],
              )),
            ),
          );
        }),
  );
}
