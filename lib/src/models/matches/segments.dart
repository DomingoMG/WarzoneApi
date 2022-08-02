/// This file is a part of WarzoneAPi (https://github.com/DomingoMG/WarzoneApi).
///
/// Copyright (c) 2022, Domingo Montesdeoca González <DomingoMG97@gmail.com>.
/// All rights reserved.
/// Use of this source code is governed by MIT license that can be found in the LICENSE file.
///
///

import 'package:warzone_api/src/models/matches/index.dart';

class Segments {
  String? type;
  SegmentAttributes? attributes;
  SegmentMetadata? metadata;
  String? expiryDate;
  Stats? stats;

  Segments(
      {this.type, this.attributes, this.metadata, this.expiryDate, this.stats});

  factory Segments.fromMap(List json) => Segments(
      type: json[0]['type'],
      attributes: SegmentAttributes.fromMap(json[0]['attributes']),
      metadata: SegmentMetadata.fromMap(json[0]['metadata']),
      expiryDate: json[0]['expiryDate'],
      stats: Stats.fromMap(json[0]['stats']));

  Map<String, dynamic> toMap() => {
        'type': type,
        'attributes': attributes?.toMap(),
        'metadata': metadata?.toMap(),
        'expiryDate': expiryDate,
        'stats': stats?.toMap()
      };
}
