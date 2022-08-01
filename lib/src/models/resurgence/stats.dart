/// This file is a part of SoundVolumeView (https://github.com/DomingoMG/WarzoneApi).
///
/// Copyright (c) 2022, Domingo Montesdeoca González <DomingoMG97@gmail.com>.
/// All rights reserved.
/// Use of this source code is governed by MIT license that can be found in the LICENSE file.
///

import 'index.dart';

class Stats {

  Kills? kills;
  Wins? wins;
  WlRatio? wlRatio;
  KdRatio? kdRatio;
  GamesPlayed? gamesPlayed;  
  Top10? top10;

  Stats({
    this.kills,
    this.kdRatio,
    this.wins,
    this.gamesPlayed,
    this.wlRatio,
    this.top10
  });

  static Stats fromMap( Map<String, dynamic> json ) => Stats(
    kills: Kills.fromMap( json['kills'] ),
    kdRatio: KdRatio.fromMap( json['kdRatio'] ),
    wins: Wins.fromMap( json['wins'] ),
    gamesPlayed: GamesPlayed.fromMap( json['gamesPlayed'] ),
    wlRatio: WlRatio.fromMap( json['wlRatio'] ),
    top10: Top10.fromMap( json['top10'] )
  );

  Map<String, dynamic> toMap() => {
    'kills': kills?.toMap(),
    'kdRatio': kdRatio?.toMap(),
    'wins': wins?.toMap(),
    'gamesPlayed': gamesPlayed?.toMap(),
    'top10': top10?.toMap(),
    'wlRatio': wlRatio?.toMap()
  };
}