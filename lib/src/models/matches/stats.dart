/// This file is a part of WarzoneAPi (https://github.com/DomingoMG/WarzoneApi).
///
/// Copyright (c) 2022, Domingo Montesdeoca González <DomingoMG97@gmail.com>.
/// All rights reserved.
/// Use of this source code is governed by MIT license that can be found in the LICENSE file.
///

import 'index.dart';

class Stats {
  Kills? kills;
  MedalXp? medalXp;
  MatchXp? matchXp;
  ScoreXp? scoreXp;
  WallBangs? wallBangs;
  Score? score;
  TotalXp? totalXp;
  Headshots? headshots;
  Assists? assists;
  ChallengeXp? challengeXp;
  ScorePerMinute? scorePerMinute;
  DistanceTraveled? distanceTraveled;
  TeamSurvivalTime? teamSurvivalTime;
  Deaths? deaths;
  KdRatio? kdRatio;
  BonusXp? bonusXp;
  GulagDeaths? gulagDeaths;
  TimePlayed? timePlayed;
  Executions? executions;
  GulagKills? gulagKills;
  Nearmisses? nearmisses;
  PercentTimeMoving? percentTimeMoving;
  MiscXp? miscXp;
  LongestStreak? longestStreak;
  TeamPlacement? teamPlacement;
  DamageDone? damageDone;
  DamageTaken? damageTaken;
  DamageDonePerMinute? damageDonePerMinute;
  Placement? placement;

  Stats(
      {this.kills,
      this.medalXp,
      this.matchXp,
      this.scoreXp,
      this.wallBangs,
      this.score,
      this.totalXp,
      this.headshots,
      this.assists,
      this.challengeXp,
      this.scorePerMinute,
      this.distanceTraveled,
      this.teamSurvivalTime,
      this.deaths,
      this.kdRatio,
      this.bonusXp,
      this.gulagDeaths,
      this.timePlayed,
      this.executions,
      this.gulagKills,
      this.nearmisses,
      this.percentTimeMoving,
      this.miscXp,
      this.longestStreak,
      this.teamPlacement,
      this.damageDone,
      this.damageTaken,
      this.damageDonePerMinute,
      this.placement});

  static Stats fromMap(Map<String, dynamic> json) => Stats(
        kills: Kills.fromMap(json['kills']),
        medalXp:
            json['medalXp'] != null ? MedalXp.fromMap(json['medalXp']) : null,
        matchXp:
            json['matchXp'] != null ? MatchXp.fromMap(json['matchXp']) : null,
        scoreXp:
            json['scoreXp'] != null ? ScoreXp.fromMap(json['scoreXp']) : null,
        wallBangs: json['wallBangs'] != null
            ? WallBangs.fromMap(json['wallBangs'])
            : null,
        score: json['score'] != null ? Score.fromMap(json['score']) : null,
        totalXp:
            json['totalXp'] != null ? TotalXp.fromMap(json['totalXp']) : null,
        headshots: json['headshots'] != null
            ? Headshots.fromMap(json['headshots'])
            : null,
        assists:
            json['assists'] != null ? Assists.fromMap(json['assists']) : null,
        challengeXp: json['challengeXp'] != null
            ? ChallengeXp.fromMap(json['challengeXp'])
            : null,
        scorePerMinute: json['scorePerMinute'] != null
            ? ScorePerMinute.fromMap(json['scorePerMinute'])
            : null,
        distanceTraveled: json['distanceTraveled'] != null
            ? DistanceTraveled.fromMap(json['distanceTraveled'])
            : null,
        teamSurvivalTime: json['teamSurvivalTime'] != null
            ? TeamSurvivalTime.fromMap(json['teamSurvivalTime'])
            : null,
        deaths: Deaths.fromMap(json['deaths']),
        kdRatio: KdRatio.fromMap(json['kdRatio']),
        bonusXp:
            json['bonusXp'] != null ? BonusXp.fromMap(json['bonusXp']) : null,
        gulagDeaths: json['gulagDeaths'] != null
            ? GulagDeaths.fromMap(json['gulagDeaths'])
            : null,
        timePlayed: json['timePlayed'] != null
            ? TimePlayed.fromMap(json['timePlayed'])
            : null,
        executions: json['executions'] != null
            ? Executions.fromMap(json['executions'])
            : null,
        gulagKills: json['gulagKills'] != null
            ? GulagKills.fromMap(json['gulagKills'])
            : null,
        nearmisses: json['nearmisses'] != null
            ? Nearmisses.fromMap(json['nearmisses'])
            : null,
        percentTimeMoving: json['percentTimeMoving'] != null
            ? PercentTimeMoving.fromMap(json['percentTimeMoving'])
            : null,
        miscXp: json['miscXp'] != null ? MiscXp.fromMap(json['miscXp']) : null,
        longestStreak: json['longestStreak'] != null
            ? LongestStreak.fromMap(json['longestStreak'])
            : null,
        teamPlacement: json['teamPlacement'] != null
            ? TeamPlacement.fromMap(json['teamPlacement'])
            : null,
        damageDone: json['damageDone'] != null
            ? DamageDone.fromMap(json['damageDone'])
            : null,
        damageTaken: json['damageTaken'] != null
            ? DamageTaken.fromMap(json['damageTaken'])
            : null,
        damageDonePerMinute: json['damageDonePerMinute'] != null
            ? DamageDonePerMinute.fromMap(json['damageDonePerMinute'])
            : null,
        placement: json['placement'] != null
            ? Placement.fromMap(json['placement'])
            : null,
      );

  Map<String, dynamic> toMap() => {
        'kills': kills?.toMap(),
        'medalXp': medalXp?.toMap(),
        'matchXp': matchXp?.toMap(),
        'scoreXp': scoreXp?.toMap(),
        'wallBangs': wallBangs?.toMap(),
        'score': score?.toMap(),
        'totalXp': totalXp?.toMap(),
        'headshots': headshots?.toMap(),
        'assists': assists?.toMap(),
        'challengeXp': challengeXp?.toMap(),
        'scorePerMinute': scorePerMinute?.toMap(),
        'distanceTraveled': distanceTraveled?.toMap(),
        'teamSurvivalTime': teamSurvivalTime?.toMap(),
        'deaths': deaths?.toMap(),
        'kdRatio': kdRatio?.toMap(),
        'bonusXp': bonusXp?.toMap(),
        'gulagDeaths': gulagDeaths?.toMap(),
        'timePlayed': timePlayed?.toMap(),
        'executions': executions?.toMap(),
        'gulagKills': gulagKills?.toMap(),
        'nearmisses': nearmisses?.toMap(),
        'percentTimeMoving': percentTimeMoving?.toMap(),
        'miscXp': miscXp?.toMap(),
        'longestStreak': longestStreak?.toMap(),
        'teamPlacement': teamPlacement?.toMap(),
        'damageDone': damageDone?.toMap(),
        'damageTaken': damageTaken?.toMap(),
        'damageDonePerMinute': damageDonePerMinute?.toMap(),
        'placement': placement?.toMap(),
      };
}
