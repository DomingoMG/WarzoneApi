import 'package:warzone_api/src/models/matches/index.dart';

class WarzoneMatch {
  Attributes? attributes;
  Metadata? metadata;
  Segments? segments;
  List<Segments>? listSegments;
  String? expiryDate;

  WarzoneMatch(
      {this.attributes,
      this.metadata,
      this.segments,
      this.expiryDate,
      this.listSegments});

  factory WarzoneMatch.notFound() => WarzoneMatch();

  factory WarzoneMatch.fromMap(Map<String, dynamic> json,
          {bool fetchDataFromOnlyMatch = false}) =>
      WarzoneMatch(
          attributes: Attributes.fromMap(json['attributes']),
          metadata: Metadata.fromMap(json['metadata']),
          segments: fetchDataFromOnlyMatch
              ? null
              : Segments.fromMap(json['segments']),
          listSegments: (json['segments'] as List)
              .map((segmentJson) => Segments.fromListMap(segmentJson))
              .toList(),
          expiryDate: json['expiryDate']);

  Map<String, dynamic> toMap() => {
        'attributes': attributes?.toMap(),
        'metadata': metadata?.toMap(),
        'segments': segments?.toMap() ??
            listSegments?.map((segment) => segment.toMap()).toList(),
        'expiryDate': expiryDate
      };
}
