import 'dart:ui';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({key}) : super(key: key);

  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 55, 94, 151),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [],
              ),
            ),
            const Text('تسجيل الدخول',
                style: TextStyle(
                    color: Color.fromARGB(255, 222, 225, 230),
                    fontSize: 35,
                    fontFamily: "Changa",
                    fontWeight: FontWeight.bold)),
            Container(
              margin: EdgeInsets.only(top: 35, left: 35, right: 35),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 22.0),
                        child: Text(
                          'البريد الإلكتروني',
                          style: TextStyle(
                              color: Color.fromARGB(255, 222, 225, 230),
                              fontSize: 20,
                              fontFamily: "Changa"),
                        ),
                      ),
                      TextField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            fillColor: const Color.fromARGB(255, 196, 196, 196),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ))),
                      ),
                      SizedBox(height: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: Text(
                              'كلمة السر',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 222, 225, 230),
                                  fontSize: 20,
                                  fontFamily: "Changa"),
                            ),
                          ),
                          TextField(
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: Color.fromARGB(255, 196, 196, 196),
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ))),
                          ),
                          const SizedBox(height: 45)
                        ],
                      )
                    ],
                  ),
                  Center(
                      child: ElevatedButton(
                    onPressed: () => {
                      Navigator.popAndPushNamed(context, "/addLocation"),
                    },
                    child: const Text(
                      'دخول',
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
                          borderRadius: BorderRadius.circular(15)),
                      minimumSize: const Size(100, 45),
                      side: const BorderSide(color: Colors.white, width: 0.5),
                    ),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
