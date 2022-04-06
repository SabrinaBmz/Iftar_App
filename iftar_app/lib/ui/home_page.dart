import 'package:flutter/material.dart';
import 'package:iftar_app/models/prayer_model.dart';
import 'package:iftar_app/services/Prayer_Api_Client.dart';
import 'package:iftar_app/widgets/Location_list_widget.dart';
import 'package:iftar_app/widgets/prayer_time_widget.dart';
import 'package:location/location.dart';
import '../models/Location_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PrayerApiClient client = PrayerApiClient();
  Prayer? data;
  LocationUser? loc;
  List<String>? prayer;
  List<String>? prayername;
  List<String>? prayer1;
  List<String>? prayername1;
  var color;
  var color1;
  var icon;
  var icon1;

  @override
  void initState() {
    super.initState();
  }

  Future<void> getData() async {
    _displayCurrentLocation();
    data = await client.getPrayerTime(loc?.location);
    prayername = [
      "الإمـسـاك",
      " الفجر",
      "الظُهر",
    ];
    prayer = [
      data?.imsak,
      data?.fajr,
      data?.dhuhr,
    ];
    color = [
      Color.fromARGB(255, 251, 101, 66),
      Color.fromARGB(255, 55, 94, 151),
      Color.fromARGB(255, 55, 94, 151),
    ];
    icon = [
      [0xf0355.hashCode, null],
      [0xf0355.hashCode, null],
      [0xf0355.hashCode, null]
    ];
    icon1 = [
      [0xf0355.hashCode, null],
      [0xf0355.hashCode, 0xe296.hashCode],
      [0xf0355.hashCode, null]
    ];
    prayername1 = ["العصر", "المغرب", "العِشاء"];
    prayer1 = [data?.asr, data?.maghrib, data?.isha];
    color1 = [
      Color.fromARGB(255, 55, 94, 151),
      Color.fromARGB(255, 251, 101, 66),
      Color.fromARGB(255, 55, 94, 151),
    ];
  }

  //This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 248, 248, 255),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 120.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: FutureBuilder(
                    future: getData(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return ListView(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('مواقيت الصلاة',
                                style: TextStyle(
                                  fontFamily: "Changa",
                                  color: Color.fromARGB(255, 55, 94, 151),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                )),
                            Text('${data!.hijriDate} الموافق ل ${data!.date}',
                                style: const TextStyle(
                                  fontFamily: "Changa",
                                  color: Color.fromARGB(255, 55, 94, 151),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                )),
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: FutureBuilder(
                                  future: getData(),
                                  builder: (context, snapshot) {
                                    if (snapshot.connectionState ==
                                        ConnectionState.done) {
                                      return Column(
                                        children: [
                                          PrayerTimeWidget(prayername!, prayer!,
                                              color!, icon!),
                                          PrayerTimeWidget(prayername1!,
                                              prayer1!, color1!, icon1!),
                                        ],
                                      );
                                    }

                                    return Container();
                                  }),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('موائد الإفطار حاليا',
                                      style: TextStyle(
                                        fontFamily: "Changa",
                                        color: Color.fromARGB(255, 55, 94, 151),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28,
                                      )),
                                  ElevatedButton(
                                    onPressed: () => print("it's pressed"),
                                    child: const Text('الكل',
                                        style: TextStyle(
                                          fontFamily: "Changa",
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                        )), // <-- Text

                                    style: ElevatedButton.styleFrom(
                                      primary: const Color.fromARGB(
                                          255, 251, 101, 66),
                                      onPrimary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: FutureBuilder(
                                  future: getData(),
                                  builder: (context, snapshot) {
                                    if (snapshot.connectionState ==
                                        ConnectionState.done) {
                                      return Column(
                                        children: [
                                          LocationListWidget(),
                                        ],
                                      );
                                    }

                                    return Container();
                                  }),
                            ),
                            const Text('الجمعيات الخيرية والتطوعية',
                                style: TextStyle(
                                  fontFamily: "Changa",
                                  color: Color.fromARGB(255, 55, 94, 151),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                )),
                            ElevatedButton(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Icon(
                                    // <-- Icon
                                    IconData(0xf52c,
                                        fontFamily: 'MaterialIcons'),
                                    size: 24.0,
                                  ),

                                  Text(' نشر مائدة إفطار',
                                      style: TextStyle(
                                        fontFamily: "Changa",
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      )), // <-- Text
                                  SizedBox(
                                    width: 5,
                                  ),
                                ],
                              ),
                              onPressed: () =>
                                  Navigator.popAndPushNamed(context, "/login"),
                              style: ElevatedButton.styleFrom(
                                primary:
                                    const Color.fromARGB(255, 251, 101, 66),
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                            ),
                          ],
                        );
                      }
                      return Container();
                    },
                  ),
                ),
              ),
            ),
          ),
        ));
  }

  Future<void> _displayCurrentLocation() async {
    Location location = new Location();
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    _locationData = await location.getLocation();
    loc = await client.getLocation(
        _locationData.latitude, _locationData.longitude);
  }
}
