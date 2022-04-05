class LocationUser {
  var location;

  LocationUser({
    this.location,
  });

  LocationUser.fromJson(Map<String, dynamic> json) {
    location = json["data"][0]["meta"]["timezone"];
  }
}
