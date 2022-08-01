/// This file is a part of SoundVolumeView (https://github.com/DomingoMG/WarzoneApi).
///
/// Copyright (c) 2022, Domingo Montesdeoca González <DomingoMG97@gmail.com>.
/// All rights reserved.
/// Use of this source code is governed by MIT license that can be found in the LICENSE file.
///

import 'package:warzone_api/src/models/br/br.dart';
import 'package:warzone_api/src/models/lifetime/lifetime.dart';
import 'package:warzone_api/src/models/plunder/plunder.dart';
import 'package:warzone_api/src/models/resurgence/resurgence.dart';

class Segments {
  
  Lifetime? lifetime;
  Br? br;
  Plunder? plunder;
  Resurgence? resurgence;

  Segments({
    this.lifetime,
    this.br,
    this.plunder,
    this.resurgence
  });

  factory Segments.fromMap( List datas ) => Segments(
    lifetime: datas[0] != null ? Lifetime.fromMap( datas[0] ) : null,
    br: datas[1] != null ? Br.fromMap( datas[1] ) : null,
    plunder: datas[2] != null ? Plunder.fromMap( datas[2] ) : null,
    resurgence: datas[3] != null ? Resurgence.fromMap( datas[3] ) : null
  );

}