/// This file is a part of SoundVolumeView (https://github.com/DomingoMG/WarzoneApi).
///
/// Copyright (c) 2022, Domingo Montesdeoca González <DomingoMG97@gmail.com>.
/// All rights reserved.
/// Use of this source code is governed by MIT license that can be found in the LICENSE file.
///

import 'package:warzone_api/src/models/plunder/metadata.dart';
import 'package:warzone_api/src/models/plunder/stats.dart';

class Plunder {
  String? type;
  Map<String, dynamic>? attributes = {};
  Metadata? metadata;
  String? expiryDate;
  Stats? stats;

  Plunder(
      {this.type, this.attributes, this.metadata, this.expiryDate, this.stats});

  factory Plunder.fromMap(Map<String, dynamic> json) => Plunder(
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
