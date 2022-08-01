Unofficial API for Call of Duty: Warzone, this plugin does not guarantee 100% functionality, as it may change.

## API functionality
With this API you can query:
- All data played
- BR mode
- Plunder mode
- Resurgence mode

## Getting started
Supported platforms:  
  Web [ ✅ ]
  
  Windows [ ✅ ] 
  
  MacOS [ ✅ ] 
  
  Linux [ ✅ ] 
  
  Android [ ✅ ] 
  
  iOS [ ✅ ]

## Usage

```dart
/// [WarzoneApi] Instance
WarzoneApi warzoneApi = WarzoneApi();

/// [WarzoneData] All user data found
WarzoneData warzoneData = await warzoneApi.search(username: "RaiiLKilleR#8661004", platform: Platform.atvi);
```

### There are several platforms to find the user
```dart
  /// [atvi] : Activision users
  atvi,

  /// [psn] : Playstation users
  psn,
  
  /// [xbl] : Xbox Live users
  xbl, 

  /// [battlenet] : battlenet users
  battlenet 
```
