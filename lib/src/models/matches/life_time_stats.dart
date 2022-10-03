/// This file is a part of WarzoneAPi (https://github.com/DomingoMG/WarzoneApi).
///
/// Copyright (c) 2022, Domingo Montesdeoca González <DomingoMG97@gmail.com>.
/// All rights reserved.
/// Use of this source code is governed by MIT license that can be found in the LICENSE file.
///

class LifeTimeStats {
  double kdRatio;
  int level;
  int kills;
  int deaths;
  int gamesPlayed;
  int top5;
  int wins;

  LifeTimeStats(
      {required this.kdRatio,
      required this.level,
      required this.kills,
      required this.deaths,
      required this.gamesPlayed,
      required this.top5,
      required this.wins});

  factory LifeTimeStats.fromMap(Map<String, dynamic> json) => LifeTimeStats(
      kdRatio: json.containsKey('kdRatio') ? json['kdRatio'] : 0.0,
      level: json.containsKey('level') ? json['level'] : 0,
      kills: json.containsKey('kills') ? json['kills'] : 0,
      deaths: json.containsKey('deaths') ? json['deaths'] : 0,
      gamesPlayed: json.containsKey('gamesPlayed') ? json['gamesPlayed'] : 0,
      top5: json.containsKey('top5') ? json['top5'] : 0,
      wins: json.containsKey('wins') ? json['wins'] : 0);

  Map<String, dynamic> toMap() => {
        'kdRatio': kdRatio,
        'level': level,
        'kills': kills,
        'deaths': deaths,
        'gamesPlayed': gamesPlayed,
        'top5': top5,
        'wins': wins
      };
}
