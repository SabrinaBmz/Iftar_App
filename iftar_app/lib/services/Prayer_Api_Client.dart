import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:iftar_app/models/Location_model.dart';
import 'package:iftar_app/models/prayer_model.dart';

class PrayerApiClient {
  Future<LocationUser?> getLocation(var lat, var long) async {
    var endpoint = Uri.parse(
        "https://api.aladhan.com/v1/calendar?latitude=$lat&longitude=$long");

    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    return LocationUser.fromJson(body);
  }

  Future<Prayer?> getPrayerTime(var location) async {
    var endpoint = Uri.parse(
        "https://api.aladhan.com/v1/timingsByAddress?address=$location");

    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    return Prayer.fromJson(body);
  }
}
