import 'package:warzone_api/src/enums/enums.dart';
import 'package:warzone_api/src/models/warzone_profile.dart';
import 'package:warzone_api/src/warzone_api_base.dart';

void main() async {
  /// [WarzoneApi] Instance
  WarzoneApi warzoneApi = WarzoneApi();

  /// [WarzoneData] All user data found
  WarzoneProfile? warzoneData = await warzoneApi.fetchUser(
      username: 'RaiiLKilleR#8661004', platform: Platform.atvi);

  // Show data
  print(warzoneData.toMap());
}
