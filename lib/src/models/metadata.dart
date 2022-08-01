/// This file is a part of SoundVolumeView (https://github.com/DomingoMG/WarzoneApi).
///
/// Copyright (c) 2022, Domingo Montesdeoca González <DomingoMG97@gmail.com>.
/// All rights reserved.
/// Use of this source code is governed by MIT license that can be found in the LICENSE file.
///

class Metadata {
  LastUpdated? lastUpdated;
  bool? hasPlayedModernWarfare;
  OtherTitles? otherTitles;

  Metadata({this.lastUpdated, this.hasPlayedModernWarfare, this.otherTitles});

  factory Metadata.fromMap(Map json) => Metadata(
        lastUpdated: LastUpdated.fromMap(json['lastUpdated']),
        hasPlayedModernWarfare: json['hasPlayedModernWarfare'],
        otherTitles: OtherTitles.fromMap(json['otherTitles']),
      );

  Map<String, dynamic> toMap() => {
        'lastUpdated': lastUpdated?.toMap(),
        'hasPlayedModernWarfare': hasPlayedModernWarfare,
        'otherTitles': otherTitles?.toMap()
      };
}

class LastUpdated {
  String? value;
  String? displayValue;

  LastUpdated({this.value, this.displayValue});

  factory LastUpdated.fromMap(Map<String, dynamic> json) =>
      LastUpdated(value: json['value'], displayValue: json['displayValue']);

  Map<String, dynamic> toMap() =>
      {'value': value, 'displayValue': displayValue};
}

class OtherTitles {
  Warzone? warzone;

  OtherTitles({this.warzone});

  factory OtherTitles.fromMap(Map<String, dynamic> json) =>
      OtherTitles(warzone: Warzone.fromMap(json['warzone']));

  Map<String, dynamic> toMap() => {'warzone': warzone?.toMap()};
}

class Warzone {
  String? platformSlug;
  String? platformUserId;
  String? platformUserHandle;
  String? platformUserIdentifier;
  String? avatarUrl;
  String? additionalParameters;

  Warzone(
      {this.platformSlug,
      this.platformUserId,
      this.platformUserHandle,
      this.platformUserIdentifier,
      this.avatarUrl,
      this.additionalParameters});

  factory Warzone.fromMap(Map<String, dynamic> json) => Warzone(
      platformSlug: json['platformSlug'],
      platformUserId: json['platformUserId'],
      platformUserHandle: json['platformUserHandle'],
      platformUserIdentifier: json['platformUserIdentifier'],
      avatarUrl: json['avatarUrl'],
      additionalParameters: json['additionalParameters']);

  Map<String, dynamic> toMap() => {
        'platformSlug': platformSlug,
        'platformUserId': platformUserId,
        'platformUserHandle': platformUserHandle,
        'platformUserIdentifier': platformUserIdentifier,
        'avatarUrl': avatarUrl,
        'additionalParameters': additionalParameters
      };
}
