import 'package:warzone_api/src/models/matches/index.dart';

class WarzoneMatch {
  Attributes? attributes;
  Metadata? metadata;
  Segments? segments;
  String? expiryDate;

   WarzoneMatch(
      {this.attributes,
      this.metadata,
      this.segments,
      this.expiryDate,
    });

  factory WarzoneMatch.notFound() => WarzoneMatch();

  factory WarzoneMatch.fromMap(Map<String, dynamic> json) => WarzoneMatch(
      attributes: Attributes.fromMap(json['attributes']),
      metadata: Metadata.fromMap(json['metadata']),
      segments: Segments.fromMap(json['segments']),
      expiryDate: json['expiryDate']);

  Map<String, dynamic> toMap() => {
    'attributes': attributes?.toMap(),
    'metadata': metadata?.toMap(),
    'segments': segments?.toMap(),
    'expiryDate': expiryDate
  };
}