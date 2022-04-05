class Prayer {
  var location;
  var lat;
  var long;
  var hijriDate;
  var date;
  var imsak;
  var fajr;
  var dhuhr;
  var asr;
  var maghrib;
  var isha;

  Prayer(
      {this.location,
      this.lat,
      this.long,
      this.hijriDate,
      this.date,
      this.imsak,
      this.fajr,
      this.dhuhr,
      this.asr,
      this.maghrib,
      this.isha});

  Prayer.fromJson(Map<String, dynamic> json) {
    location = json["data"]["meta"]["timezone"];
    lat = json["data"]["meta"]["latitude"];
    long = json["data"]["meta"]["longitude"];
    hijriDate = json["data"]["date"]["hijri"]["weekday"]["ar"] +
        " " +
        json["data"]["date"]["hijri"]["day"] +
        " " +
        json["data"]["date"]["hijri"]["month"]["ar"] +
        " " +
        json["data"]["date"]["hijri"]["year"];

    date = json["data"]["date"]["gregorian"]["date"];
    imsak = json["data"]["timings"]["Imsak"];
    fajr = json["data"]["timings"]["Fajr"];
    dhuhr = json["data"]["timings"]["Dhuhr"];
    asr = json["data"]["timings"]["Asr"];
    maghrib = json["data"]["timings"]["Maghrib"];
    isha = json["data"]["timings"]["Isha"];
  }
}
