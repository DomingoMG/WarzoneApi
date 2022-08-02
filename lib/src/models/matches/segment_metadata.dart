class SegmentMetadata {
  String? platformUserHandle;
  String? clanTag;
  int? placement;
  List<Teammates>? teammates;

  SegmentMetadata(
      {this.platformUserHandle, this.clanTag, this.placement, this.teammates});

  SegmentMetadata.fromMap(Map<String, dynamic> json) {
    platformUserHandle = json['platformUserHandle'];
    clanTag = json['clanTag'];
    placement = json['placement'] is int ? json['placement'] : 0;
    if (json['teammates'] != null) {
      teammates = <Teammates>[];
      json['teammates'].forEach((v) {
        teammates!.add(Teammates.fromMap(v));
      });
    }
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['platformUserHandle'] = platformUserHandle;
    data['clanTag'] = clanTag;
    data['placement'] = placement;
    if (teammates != null) {
      data['teammates'] = teammates!.map((v) => v.toMap()).toList();
    }
    return data;
  }
}

class Teammates {
  String? platformUserId;
  String? platformUserHandle;
  String? clantag;
  Stats? stats;

  Teammates(
      {this.platformUserId, this.platformUserHandle, this.clantag, this.stats});

  Teammates.fromMap(Map<String, dynamic> json) {
    platformUserId = json['platformUserId'];
    platformUserHandle = json['platformUserHandle'];
    clantag = json['clantag'];
    stats = json['stats'] != null ? Stats.fromMap(json['stats']) : null;
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['platformUserId'] = platformUserId;
    data['platformUserHandle'] = platformUserHandle;
    data['clantag'] = clantag;
    if (stats != null) {
      data['stats'] = stats!.toMap();
    }
    return data;
  }
}

class Stats {
  int? kills;
  int? deaths;
  int? placement;
  int? timePlayed;

  Stats({this.kills, this.deaths, this.placement, this.timePlayed});

  Stats.fromMap(Map<String, dynamic> json) {
    kills = json['kills'] is int ? json['kills'] : 0;
    deaths = json['deaths'] is int ? json['deaths'] : 0;
    placement = json['placement'] is int ? json['placement'] : 0;
    timePlayed = json['timePlayed'] is int ? json['timePlayed'] : 0;
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kills'] = kills;
    data['deaths'] = deaths;
    data['placement'] = placement;
    data['timePlayed'] = timePlayed;
    return data;
  }
}