/// This file is a part of WarzoneAPi (https://github.com/DomingoMG/WarzoneApi).
///
/// Copyright (c) 2022, Domingo Montesdeoca González <DomingoMG97@gmail.com>.
/// All rights reserved.
/// Use of this source code is governed by MIT license that can be found in the LICENSE file.
///

import 'package:warzone_api/src/models/profile/br/br.dart';
import 'package:warzone_api/src/models/profile/lifetime/lifetime.dart';
import 'package:warzone_api/src/models/profile/plunder/plunder.dart';
import 'package:warzone_api/src/models/profile/resurgence/resurgence.dart';

class Segments {
  Lifetime? lifetime;
  Br? br;
  Plunder? plunder;
  Resurgence? resurgence;

  Segments({this.lifetime, this.br, this.plunder, this.resurgence});

  factory Segments.fromMap(List datas) => Segments(
      lifetime: datas.isNotEmpty ? Lifetime.fromMap(datas[0]) : null,
      br: datas.length >= 2 ? Br.fromMap(datas[1]) : null,
      plunder: datas.length >=3 ? Plunder.fromMap(datas[2]) : null,
      resurgence: datas.length >=4 ? Resurgence.fromMap(datas[3]) : null);
}
