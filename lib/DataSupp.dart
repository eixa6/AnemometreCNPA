class DataSupp {
  final int tmp;
  final int ten;
  final int lat;
  final int lon;

  DataSupp({this.tmp, this.ten, this.lat, this.lon});

  factory DataSupp.fromJson(Map<String, dynamic> json) {
    return DataSupp(
      ten: json['tension'],
      tmp: json['temperature'],
      lat: json['latitude'],
      lon: json['longitude'],
    );
  }
}