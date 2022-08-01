import 'package:warzone_api/src/enums/enums.dart';
import 'package:warzone_api/src/models/warzone_data.dart';
import 'package:warzone_api/src/warzone_api_base.dart';

void main() async {
  
  /// [WarzoneApi] Instance
  WarzoneApi warzoneApi = WarzoneApi();
  
  /// [WarzoneData] All user data found
  WarzoneData? warzoneData = await warzoneApi.search(username: 'RaiiLKilleR#8661004', platform: Platform.atvi);

  // Show data
  print(warzoneData.toMap());
}
