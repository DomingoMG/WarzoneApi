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


  Stats({
    this.kills,
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
    this.placement
  });

  static Stats fromMap(Map<String, dynamic> json) => Stats(
    kills: Kills.fromMap( json['kills'] ),
    medalXp: MedalXp.fromMap( json['medalXp'] ),
    matchXp: MatchXp.fromMap( json['matchXp'] ),
    scoreXp: ScoreXp.fromMap( json['scoreXp'] ),
    wallBangs: WallBangs.fromMap( json['wallBangs'] ),
    score: Score.fromMap( json['score'] ),
    totalXp: TotalXp.fromMap( json['totalXp'] ),
    headshots: Headshots.fromMap( json['headshots'] ),
    assists: Assists.fromMap( json['assists'] ),
    challengeXp: ChallengeXp.fromMap( json['challengeXp'] ),
    scorePerMinute: ScorePerMinute.fromMap( json['scorePerMinute'] ),
    distanceTraveled: DistanceTraveled.fromMap( json['distanceTraveled'] ),
    teamSurvivalTime: TeamSurvivalTime.fromMap( json['teamSurvivalTime'] ),
    deaths: Deaths.fromMap( json['deaths'] ),
    kdRatio: KdRatio.fromMap( json['kdRatio'] ),
    bonusXp: BonusXp.fromMap( json['bonusXp'] ),
    gulagDeaths: GulagDeaths.fromMap( json['gulagDeaths'] ),
    timePlayed: TimePlayed.fromMap( json['timePlayed'] ),
    executions: Executions.fromMap( json['executions'] ),
    gulagKills: GulagKills.fromMap( json['gulagKills'] ),
    nearmisses: Nearmisses.fromMap( json['nearmisses'] ),
    percentTimeMoving: PercentTimeMoving.fromMap( json['percentTimeMoving'] ),
    miscXp: MiscXp.fromMap( json['miscXp'] ),
    longestStreak: LongestStreak.fromMap( json['longestStreak'] ),
    teamPlacement: TeamPlacement.fromMap( json['teamPlacement'] ),
    damageDone: DamageDone.fromMap( json['damageDone'] ),
    damageTaken: DamageTaken.fromMap( json['damageTaken'] ),
    damageDonePerMinute: DamageDonePerMinute.fromMap( json['damageDonePerMinute'] ),
    placement: Placement.fromMap( json['placement'] ),
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
