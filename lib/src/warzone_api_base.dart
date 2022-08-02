/// This file is a part of WarzoneAPi (https://github.com/DomingoMG/WarzoneApi).
///
/// Copyright (c) 2022, Domingo Montesdeoca González <DomingoMG97@gmail.com>.
/// All rights reserved.
/// Use of this source code is governed by MIT license that can be found in the LICENSE file.
///

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:warzone_api/src/enums/enums.dart';
import 'package:warzone_api/src/global/global.dart';
import 'package:warzone_api/src/models/warzone_matchs.dart';
import 'package:warzone_api/src/models/warzone_profile.dart';
import 'package:warzone_api/src/models/warzone_search.dart';

class WarzoneApi {
 
 
  /// [fetchUser] Get all user information
  Future<WarzoneProfile> fetchUser(
      {required String username, Platform platform = Platform.atvi}) async {
    String url = '${Global.trackerApi}/profile/${platform.name.toLowerCase()}/$username'.replaceAll('#', '%23');

    Uri uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      // User OK
      return WarzoneProfile.fromMap(jsonDecode(response.body));
    } else {
      // User not found
      return WarzoneProfile.notFound();
    }
  }

  /// [search] User search through platform and text
  Future<List<WarzoneSearch>> search(
      {required String username, Platform platform = Platform.atvi}) async {
    String url = '${Global.trackerApi}/search?platform=${platform.name.toLowerCase()}&query=$username'.replaceAll('#', '%23');

    Uri uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) { // Users OK
      final dataJson = jsonDecode(response.body);
      return (dataJson['data'] as List).map(( users ) => WarzoneSearch.fromMap( users ) ).toList();
    } else { // Users not found
      return [];
    }
  }

  /// [fetchMatchesPlayedFromUser] It will return a list of games played by the user
  Future<List<WarzoneMatch>> fetchMatchesPlayedFromUser({ required String username, Platform platform = Platform.atvi }) async {   
    String url = '${Global.trackerApi}/matches/${platform.name.toLowerCase()}/$username'.replaceAll('#', '%23');
    Uri uri = Uri.parse(url);
    final response = await http.get(uri);
      print( response.body );

    if( response.statusCode == 200 ){ // Matches OK
      final dataJson = jsonDecode(response.body);
      return (dataJson['data']['matches'] as List).map(( matchJson ) => WarzoneMatch.fromMap( matchJson )).toList();
    } else { // Matches not found
      return [];
    }
  }

  /// [fetchMatchFromUser] It will return a list of games played by the user
  Future<WarzoneMatch> fetchMatchFromUser({ required String attributeIdFromMatch }) async {   
    String url = '${Global.trackerApi}/matches/$attributeIdFromMatch';
    Uri uri = Uri.parse(url);
    final response = await http.get(uri);
      print( response.body );

    if( response.statusCode == 200 ){ // Matches OK
      final dataJson = jsonDecode(response.body);
      return WarzoneMatch.fromMap( dataJson['data'] );
    } else { // Matches not found
      return WarzoneMatch.notFound();
    }
  }

}
