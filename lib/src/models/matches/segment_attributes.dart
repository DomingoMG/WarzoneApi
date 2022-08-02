class SegmentAttributes {
  String? platformUserIdentifier;
  String? platformSlug;
  String? team;

  SegmentAttributes(
      {this.platformUserIdentifier, this.platformSlug, this.team});

  SegmentAttributes.fromMap(Map<String, dynamic> json) {
    platformUserIdentifier = json['platformUserIdentifier'];
    platformSlug = json['platformSlug'];
    team = json['team'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['platformUserIdentifier'] = platformUserIdentifier;
    data['platformSlug'] = platformSlug;
    data['team'] = team;
    return data;
  }
}