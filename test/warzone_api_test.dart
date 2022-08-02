/// This file is a part of WarzoneAPi (https://github.com/DomingoMG/WarzoneApi).
///
/// Copyright (c) 2022, Domingo Montesdeoca González <DomingoMG97@gmail.com>.
/// All rights reserved.
/// Use of this source code is governed by MIT license that can be found in the LICENSE file.
///

import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:warzone_api/src/enums/enums.dart';
import 'package:warzone_api/src/models/warzone_matchs.dart';
import 'package:warzone_api/src/models/warzone_profile.dart';
import 'package:warzone_api/src/models/warzone_search.dart';
import 'package:warzone_api/src/warzone_api_base.dart';

void main() async {
  /// Instance:
  WarzoneApi warzoneApi = WarzoneApi();

  // Get data from a player
  test('Fetch Warzone Profile', () async {
    WarzoneProfile warzoneData = await warzoneApi.fetchUser(
        username: 'RaiiLKilleR#8661004', platform: Platform.atvi);
    expect(warzoneData.platformInfo?.platformUserIdentifier, isNotEmpty);
    print(warzoneData.toMap());
  });

  // Search user by name and platform
  test('Search Users', () async {
    List<WarzoneSearch> usersFounds = await warzoneApi.search(
        username: 'RaiiLKilleR', platform: Platform.atvi);
    for (WarzoneSearch userFound in usersFounds) {
      expect(userFound.platformUserIdentifier, isNotEmpty);
      print(userFound.toMap());
    }
  });

  // Get the matches played
  test('Get the matches played', () async {
    List<WarzoneMatch> matchesFounds =
        await warzoneApi.fetchMatchesPlayedFromUser(
            username: 'RaiiLKilleR#8661004', platform: Platform.atvi);
    for (WarzoneMatch matchFound in matchesFounds) {
      expect(matchFound.attributes?.id, isNotEmpty);
      print(matchFound.toMap());
    }
  });

  // Get the matches played
  test('Consult information of the game played', () async {
    WarzoneMatch matchFound = await warzoneApi.fetchMatchFromUser(
        attributeIdFromMatch: '10005806731254879321');
    expect(matchFound.attributes?.id, isNotEmpty);
    print(matchFound.toMap());
  });
}
