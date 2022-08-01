/// This file is a part of SoundVolumeView (https://github.com/DomingoMG/WarzoneApi).
///
/// Copyright (c) 2022, Domingo Montesdeoca González <DomingoMG97@gmail.com>.
/// All rights reserved.
/// Use of this source code is governed by MIT license that can be found in the LICENSE file.
///

import 'package:warzone_api/src/models/warzone_data.dart';
import 'package:warzone_api/src/warzone_api_base.dart';

void main() async {
  WarzoneApi warzoneApi = WarzoneApi();

  WarzoneData? warzoneData =
      await warzoneApi.search(username: 'RaiiLKilleR#8661004');
}
