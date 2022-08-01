/// This file is a part of SoundVolumeView (https://github.com/DomingoMG/WarzoneApi).
///
/// Copyright (c) 2022, Domingo Montesdeoca González <DomingoMG97@gmail.com>.
/// All rights reserved.
/// Use of this source code is governed by MIT license that can be found in the LICENSE file.
///

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:warzone_api/src/enums/enums.dart';
import 'package:warzone_api/src/models/warzone_data.dart';

class WarzoneApi {

  /// [search] The `username` can come with #8600023 with a numeric format next to the name. `Platform` parameter optional
  Future<WarzoneData> search({ required String username, Platform platform = Platform.atvi }) async {
    String url = 'https://api.tracker.gg/api/v2/warzone/standard/profile/${platform.name.toLowerCase()}/$username'.replaceAll('#', '%23');
    
    Uri uri = Uri.parse( url );
    final response = await http.get( uri );
    
    if( response.statusCode == 200  ){ // User OK
      return WarzoneData.fromMap(jsonDecode( response.body ));
    } else {// User not found
      return WarzoneData.notFound();
    }
  }
}