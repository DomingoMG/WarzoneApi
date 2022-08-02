/// This file is a part of WarzoneAPi (https://github.com/DomingoMG/WarzoneApi).
///
/// Copyright (c) 2022, Domingo Montesdeoca González <DomingoMG97@gmail.com>.
/// All rights reserved.
/// Use of this source code is governed by MIT license that can be found in the LICENSE file.
///

import 'package:warzone_api/src/models/profile/index.dart';

class WarzoneProfile {
  PlatformInfo? platformInfo;
  UserInfo? userInfo;
  Metadata? metadata;
  Segments? segments;
  List<dynamic>? availableSegments = [];
  String? expiryDate;

  WarzoneProfile(
      {this.platformInfo,
      this.userInfo,
      this.metadata,
      this.segments,
      this.availableSegments,
      this.expiryDate});

  factory WarzoneProfile.notFound() => WarzoneProfile();

  factory WarzoneProfile.fromMap(Map<String, dynamic> json) => WarzoneProfile(
      platformInfo: PlatformInfo.fromMap(json['data']['platformInfo']),
      userInfo: UserInfo.fromMap(json['data']['userInfo']),
      metadata: Metadata.fromMap(json['data']['metadata']),
      segments: Segments.fromMap(json['data']['segments']),
      availableSegments: json['data']['availableSegments'] ?? {},
      expiryDate: json['data']['expiryDate']);

  Map<String, dynamic> toMap() => {
        'platformInfo': platformInfo?.toMap(),
        'userInfo': userInfo?.toMap(),
        'metadata': metadata?.toMap(),
        'segments': {
          'lifetime': segments?.lifetime?.toMap(),
          'br': segments?.br?.toMap(),
          'plunder': segments?.plunder?.toMap(),
          'resurgence': segments?.resurgence?.toMap()
        },
        'availableSegments': availableSegments,
        'expiryDate': expiryDate
      };
}
