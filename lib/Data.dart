class Data {
  final String device;
  final String time;
  final String data;
  final int vM3;
  final int vM2;
  final int vM1;
  final int vM0;
  final int dA3;
  final int dA2;
  final int dA1;
  final int dA0;
  final int vC1;
  final int vC0;
  final int aC1;
  final int aC0;
  final int temp;
  final int tens;
  final double long;
  final double lati;

  Data({this.device, this.time, this.data, this.vM3, this.vM2, this.vM1, this.vM0, this.dA3, this.dA2, this.dA1, this.dA0, this.vC1, this.vC0, this.aC1, this.aC0, this.tens, this.lati, this.long, this.temp});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      device: json['device'],
      time: json['time'],
      data: json['data'],
      vM3: json['vM3'],
      vM2: json['vM2'],
      vM1: json['vM1'],
      vM0: json['vM0'],
      dA3: json['dA3'],
      dA2: json['dA2'],
      dA1: json['dA1'],
      dA0: json['dA0'],
      vC1: json['vC1'],
      vC0: json['vC0'],
      aC1: json['aC1'],
      aC0: json['aC0'],
      temp: json['temperature'],
      tens: json['tension'],
      lati: json['latitude'],
      long: json['longitude'],
    );
  }
}