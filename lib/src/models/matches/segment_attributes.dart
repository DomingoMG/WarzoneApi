import 'package:warzone_api/src/models/matches/life_time_stats.dart';

class SegmentAttributes {
  String? platformUserIdentifier;
  String? platformSlug;
  String? team;
  LifeTimeStats? lifeTimeStats;

  SegmentAttributes(
      {this.platformUserIdentifier,
      this.platformSlug,
      this.team,
      this.lifeTimeStats});

  SegmentAttributes.fromMap(Map<String, dynamic> json) {
    platformUserIdentifier = json['platformUserIdentifier'];
    platformSlug = json['platformSlug'];
    team = json['team'];
    lifeTimeStats = json['lifeTimeStats'] != null
        ? LifeTimeStats.fromMap(json['lifeTimeStats'])
        : null;
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['platformUserIdentifier'] = platformUserIdentifier;
    data['platformSlug'] = platformSlug;
    data['team'] = team;
    data['lifeTimeStats'] = lifeTimeStats?.toMap();
    return data;
  }
}
