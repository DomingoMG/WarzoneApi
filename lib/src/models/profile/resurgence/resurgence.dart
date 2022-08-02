/// This file is a part of WarzoneAPi (https://github.com/DomingoMG/WarzoneApi).
///
/// Copyright (c) 2022, Domingo Montesdeoca González <DomingoMG97@gmail.com>.
/// All rights reserved.
/// Use of this source code is governed by MIT license that can be found in the LICENSE file.
///

import 'package:warzone_api/src/models/profile/resurgence/metadata.dart';
import 'package:warzone_api/src/models/profile/resurgence/stats.dart';

class Resurgence {
  String? type;
  Map<String, dynamic>? attributes = {};
  Metadata? metadata;
  String? expiryDate;
  Stats? stats;

  Resurgence(
      {this.type, this.attributes, this.metadata, this.expiryDate, this.stats});

  factory Resurgence.fromMap(Map<String, dynamic> json) => Resurgence(
      type: json['type'],
      attributes: json['attributes'] ?? {},
      metadata: Metadata.fromMap(json['metadata']),
      expiryDate: json['expiryDate'],
      stats: Stats.fromMap(json['stats']));

  Map<String, dynamic> toMap() => {
        'type': type,
        'attributes': attributes,
        'metadata': metadata?.toMap(),
        'expiryDate': expiryDate,
        'stats': stats?.toMap()
      };
}
