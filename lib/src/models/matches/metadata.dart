/// This file is a part of WarzoneAPi (https://github.com/DomingoMG/WarzoneApi).
///
/// Copyright (c) 2022, Domingo Montesdeoca González <DomingoMG97@gmail.com>.
/// All rights reserved.
/// Use of this source code is governed by MIT license that can be found in the LICENSE file.
///

class Metadata {
  Duration? duration;
  String? timestamp;
  int? playerCount;
  int? teamCount;
  String? mapName;
  String? mapImageUrl;
  String? modeName;

  Metadata(
      {this.duration,
      this.timestamp,
      this.playerCount,
      this.teamCount,
      this.mapName,
      this.mapImageUrl,
      this.modeName});

  Metadata.fromMap(Map<String, dynamic> json) {
    duration = json['duration'] != null
        ? Duration.fromMap(json['duration'])
        : null;
    timestamp = json['timestamp'].toString();
    playerCount = json['playerCount'];
    teamCount = json['teamCount'];
    mapName = json['mapName'];
    mapImageUrl = json['mapImageUrl'];
    modeName = json['modeName'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (duration != null) {
      data['duration'] = duration!.toMap();
    }
    data['timestamp'] = timestamp;
    data['playerCount'] = playerCount;
    data['teamCount'] = teamCount;
    data['mapName'] = mapName;
    data['mapImageUrl'] = mapImageUrl;
    data['modeName'] = modeName;
    return data;
  }
}

class Duration {
  int? value;
  String? displayValue;
  String? displayType;

  Duration({this.value, this.displayValue, this.displayType});

  Duration.fromMap(Map<String, dynamic> json) {
    value = json['value'];
    displayValue = json['displayValue'];
    displayType = json['displayType'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['value'] = value;
    data['displayValue'] = displayValue;
    data['displayType'] = displayType;
    return data;
  }
}