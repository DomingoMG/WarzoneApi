![](https://github.com/DomingoMG/WarzoneApi/blob/main/assets/warzone_logo.png?raw=true)

### Unofficial API for Call of Duty: Warzone, this plugin does not guarantee 100% functionality, as it may change.

## API functionality
With this API you can query:
- All data played
- BR mode
- Plunder mode
- Resurgence mode

## Getting started
Supported platforms:  
  ✅ Web
  
  ✅ Windows
  
  ✅ MacOS
  
  ✅ Linux
  
  ✅ Android
  
  ✅ iOS

## Usage

```dart
/// [WarzoneApi] Instance
WarzoneApi warzoneApi = WarzoneApi();
```

```dart
/// [WarzoneSearch] Search players by name and platform
List<WarzoneSearch> usersFounds = await warzoneApi.fetchUser(username: "RaiiLKilleR#8661004", platform: Platform.atvi);
```

```dart
/// [WarzoneProfile] Consult the data of a player
WarzoneProfile warzoneProfile = await warzoneApi.search(username: "RaiiLKilleR", platform: Platform.atvi);
```

```dart
/// [WarzoneMatch] Get the user's last played games
List<WarzoneMatch> matchsFounds = await warzoneApi.fetchMatchesPlayedFromUser(username: "RaiiLKilleR#8661004", platform: Platform.atvi);
```

```dart
/// [WarzoneMatch] Get information about the game played
WarzoneMatch matchFound = await warzoneApi.fetchMatchFromUser(attributeIdFromMatch: '10005806731254879321');
```


### There are several platforms to find the user
```dart
enum Platform {
  /// [atvi] : Activision users
  atvi,

  /// [psn] : Playstation users
  psn,
  
  /// [xbl] : Xbox Live users
  xbl, 

  /// [battlenet] : battlenet users
  battlenet 
}
```
