import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'dart:ui' as ui;

class AddLocation extends StatefulWidget {
  const AddLocation({key}) : super(key: key);

  @override
  _AddLocation createState() => _AddLocation();
}

class _AddLocation extends State<AddLocation> {
  late DateTime _fromDate;
  final format = DateFormat("HH:mm");

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: ui.TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 150.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [],
                  ),
                ),
                const Center(
                  child: Text('نشر مائدة إفطار',
                      style: TextStyle(
                          color: Color.fromARGB(255, 55, 94, 151),
                          fontSize: 35,
                          fontFamily: "Changa",
                          fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 10.0, bottom: 8, left: 10),
                  child: Form(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('وقت الإفطار',
                              style: TextStyle(
                                color: Color.fromARGB(255, 55, 94, 151),
                                fontSize: 20,
                                fontFamily: "Changa",
                                fontWeight: FontWeight.bold,
                              )),
                          Image(
                            image: AssetImage("assets/images/group5.png"),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 9, left: 9),
                        child: DateTimeField(
                            textAlign: TextAlign.end,
                            format: format,
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 55, 94, 151))),
                              labelText: 'ادخل وقت الإفطار هنا',
                              labelStyle: TextStyle(fontFamily: "Changa"),
                            ),
                            onShowPicker: (context, currentValue) async {
                              final time = await showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay.fromDateTime(
                                      currentValue ?? DateTime.now()));
                              return DateTimeField.convert(time);
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('سعة الإفطار',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 55, 94, 151),
                                  fontSize: 20,
                                  fontFamily: "Changa",
                                  fontWeight: FontWeight.bold,
                                )),
                            Image(
                              image: AssetImage("assets/images/vector.png"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 9, left: 9),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 55, 94, 151)),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 55, 94, 151))),
                            labelText: 'ادخل سعة الإفطار هنا',
                            labelStyle: TextStyle(fontFamily: "Changa"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('العنوان',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 55, 94, 151),
                                  fontSize: 20,
                                  fontFamily: "Changa",
                                  fontWeight: FontWeight.bold,
                                )),
                            Image(
                              image: AssetImage(
                                  "assets/images/fluent_calendar.png"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 9, left: 9),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 55, 94, 151)),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 55, 94, 151))),
                              labelText: 'ادخل العنوان هنا',
                              labelStyle: TextStyle(fontFamily: "Changa")),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('الرابط لخرائط غوغل',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 55, 94, 151),
                                  fontSize: 20,
                                  fontFamily: "Changa",
                                  fontWeight: FontWeight.bold,
                                )),
                            Image(
                              image: AssetImage("assets/images/vector1.png"),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 9, left: 9),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 55, 94, 151)),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 55, 94, 151))),
                            labelText: 'ادخل الرابط لخرائط غوغل هنا',
                            labelStyle: TextStyle(fontFamily: "Changa"),
                          ),
                        ),
                      ),
                    ],
                  )),
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: (() => {}),
                    child: const Text(
                      'أضف مائدة',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 251, 101, 66),
                      onPrimary: Colors.white,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      minimumSize: Size(55, 25),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
