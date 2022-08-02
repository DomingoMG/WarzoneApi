class KdHistogram {
  List<dynamic> kds = <dynamic>[];

  KdHistogram({
    required this.kds
  });

  factory KdHistogram.fromMap( List<dynamic>? json ){
    return KdHistogram(kds: json is List ? json.map(( kd ) => kd).toList() : []);
  }

  Map<String, dynamic> toMap() => {
    'kdHistogram': kds.map(( kd ) => kd).toList()
  };
}