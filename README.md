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

### [WarzoneApi] Instance
```dart
WarzoneApi warzoneApi = WarzoneApi();
```

### [WarzoneSearch] Consult the data of a player
```dart
List<WarzoneSearch> usersFounds = await warzoneApi.fetchUser(username: "RaiiLKilleR#8661004", platform: Platform.atvi);
```

### [WarzoneProfile] Search players by name and platform
```dart
WarzoneProfile warzoneProfile = await warzoneApi.search(username: "RaiiLKilleR", platform: Platform.atvi);
```

### [WarzoneMatch] Get the user's last played games
```dart
List<WarzoneMatch> matchsFounds = await warzoneApi.fetchMatchesPlayedFromUser(username: "RaiiLKilleR#8661004", platform: Platform.atvi);
```

### [WarzoneMatch] Get information about the game played
```dart
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
