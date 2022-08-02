import 'package:warzone_api/src/models/matches/index.dart';

/// This file is a part of WarzoneAPi (https://github.com/DomingoMG/WarzoneApi).
///
/// Copyright (c) 2022, Domingo Montesdeoca González <DomingoMG97@gmail.com>.
/// All rights reserved.
/// Use of this source code is governed by MIT license that can be found in the LICENSE file.
///

class Attributes {
  String? id;
  String? mapId;
  String? modeId;
  AvgKd? avgKd;
  KdHistogram? kdHistogram;

  Attributes({this.id, this.mapId, this.modeId, this.avgKd});

  Attributes.fromMap(Map<String, dynamic> json) {
    id = json['id'].toString();
    mapId = json['mapId'].toString();
    modeId = json['modeId'].toString();
    avgKd = json['avgKd'] != null ? AvgKd.fromMap(json['avgKd']) : null;
    kdHistogram = json['kdHistogram'] != null
        ? KdHistogram.fromMap(json['kdHistogram'])
        : null;
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['mapId'] = mapId;
    data['modeId'] = modeId;
    if (avgKd != null) {
      data['avgKd'] = avgKd!.toMap();
    }
    data['kdHistogram'] = kdHistogram?.toMap();
    return data;
  }
}

class AvgKd {
  double? kd;
  double? pct;

  AvgKd({this.kd, this.pct});

  AvgKd.fromMap(Map<String, dynamic> json) {
    kd = json['kd'];
    pct = json['pct'] != null ? double.parse(json['pct'].toString()) : null;
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kd'] = kd;
    data['pct'] = pct;
    return data;
  }
}
