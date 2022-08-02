/// This file is a part of WarzoneAPi (https://github.com/DomingoMG/WarzoneApi).
///
/// Copyright (c) 2022, Domingo Montesdeoca González <DomingoMG97@gmail.com>.
/// All rights reserved.
/// Use of this source code is governed by MIT license that can be found in the LICENSE file.
///

import 'index.dart';

class Stats {
  Kills? kills;
  Deaths? deaths;
  Downs? downs;
  KdRatio? kdRatio;
  Wins? wins;
  GamesPlayed? gamesPlayed;
  TimePlayed? timePlayed;
  WlRatio? wlRatio;
  Score? score;
  ScorePerMinute? scorePerMinute;
  ScorePerGame? scorePerGame;
  Cash? cash;
  Contracts? contracts;
  AverageLife? averageLife;
  WeeklyKills? weeklyKills;
  WeeklyKillsPerGame? weeklyKillsPerGame;
  WeeklyScorePerMinute? weeklyScorePerMinute;
  WeeklyScorePerGame? weeklyScorePerGame;
  WeeklyKdRatio? weeklyKdRatio;
  WeeklyHeadshotPct? weeklyHeadshotPct;
  WeeklyMatchesPlayed? weeklyMatchesPlayed;
  WeeklyDamageDone? weeklyDamageDone;
  WeeklyDamagePerMatch? weeklyDamagePerMatch;
  WeeklyDamagePerMinute? weeklyDamagePerMinute;

  Stats(
      {this.kills,
      this.deaths,
      this.downs,
      this.kdRatio,
      this.wins,
      this.gamesPlayed,
      this.timePlayed,
      this.wlRatio,
      this.score,
      this.scorePerMinute,
      this.scorePerGame,
      this.cash,
      this.contracts,
      this.averageLife,
      this.weeklyKills,
      this.weeklyKillsPerGame,
      this.weeklyScorePerMinute,
      this.weeklyScorePerGame,
      this.weeklyKdRatio,
      this.weeklyHeadshotPct,
      this.weeklyMatchesPlayed,
      this.weeklyDamageDone,
      this.weeklyDamagePerMatch,
      this.weeklyDamagePerMinute});

  static Stats fromMap(Map<String, dynamic> json) => Stats(
      kills: Kills.fromMap(json['kills']),
      deaths: Deaths.fromMap(json['deaths']),
      kdRatio: KdRatio.fromMap(json['kdRatio']),
      wins: Wins.fromMap(json['wins']),
      gamesPlayed: GamesPlayed.fromMap(json['gamesPlayed']),
      timePlayed: TimePlayed.fromMap(json['timePlayed']),
      wlRatio: WlRatio.fromMap(json['wlRatio']),
      score: Score.fromMap(json['score']),
      scorePerMinute: ScorePerMinute.fromMap(json['scorePerMinute']),
      scorePerGame: ScorePerGame.fromMap(json['scorePerGame']),
      contracts: Contracts.fromMap(json['contracts']),
      averageLife: AverageLife.fromMap(json['averageLife']),
      cash: Cash.fromMap(json['cash']),
      downs: Downs.fromMap(json['downs']),
      weeklyKills: WeeklyKills.fromMap(json['weeklyKills']),
      weeklyKillsPerGame:
          WeeklyKillsPerGame.fromMap(json['weeklyKillsPerGame']),
      weeklyScorePerMinute:
          WeeklyScorePerMinute.fromMap(json['weeklyScorePerMinute']),
      weeklyScorePerGame:
          WeeklyScorePerGame.fromMap(json['weeklyScorePerGame']),
      weeklyKdRatio: WeeklyKdRatio.fromMap(json['weeklyKdRatio']),
      weeklyHeadshotPct: WeeklyHeadshotPct.fromMap(json['weeklyHeadshotPct']),
      weeklyMatchesPlayed:
          WeeklyMatchesPlayed.fromMap(json['weeklyMatchesPlayed']),
      weeklyDamageDone: WeeklyDamageDone.fromMap(json['weeklyDamageDone']),
      weeklyDamagePerMatch:
          WeeklyDamagePerMatch.fromMap(json['weeklyDamagePerMatch']),
      weeklyDamagePerMinute:
          WeeklyDamagePerMinute.fromMap(json['weeklyDamagePerMinute']));

  Map<String, dynamic> toMap() => {
        'kills': kills?.toMap(),
        'deaths': deaths?.toMap(),
        'downs': downs?.toMap(),
        'kdRatio': kdRatio?.toMap(),
        'wins': wins?.toMap(),
        'gamesPlayed': gamesPlayed?.toMap(),
        'timesPlayed': timePlayed?.toMap(),
        'wlRatio': wlRatio?.toMap(),
        'score': score?.toMap(),
        'scorePerMinute': scorePerMinute?.toMap(),
        'scorePerGame': scorePerGame?.toMap(),
        'cash': cash?.toMap(),
        'contracts': contracts?.toMap(),
        'averageLife': averageLife?.toMap(),
        'weeklyKills': weeklyKills?.toMap(),
        'weeklyKillsPerGame': weeklyKillsPerGame?.toMap(),
        'weeklyScorePerMinute': weeklyScorePerMinute?.toMap(),
        'weeklyScorePerGame': weeklyScorePerGame?.toMap(),
        'weeklyKdRatio': weeklyKdRatio?.toMap(),
        'weeklyHeadshotPct': weeklyHeadshotPct?.toMap(),
        'weeklyMatchesPlayed': weeklyMatchesPlayed?.toMap(),
        'weeklyDamageDone': weeklyDamageDone?.toMap(),
        'weeklyDamagePerMatch': weeklyDamagePerMatch?.toMap(),
        'weeklyDamagePerMinute': weeklyDamagePerMinute?.toMap()
      };
}
