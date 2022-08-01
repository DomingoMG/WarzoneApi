/// This file is a part of SoundVolumeView (https://github.com/DomingoMG/WarzoneApi).
///
/// Copyright (c) 2022, Domingo Montesdeoca González <DomingoMG97@gmail.com>.
/// All rights reserved.
/// Use of this source code is governed by MIT license that can be found in the LICENSE file.
///

class PlatformInfo {
  String? platformSlug;
  String? platformUserId;
  String? platformUserHandle;
  String? platformUserIdentifier;
  String? platformAvatarUrl;
  String? additionalParameters;

  PlatformInfo(
      {required this.platformSlug,
      required this.platformUserId,
      required this.platformUserHandle,
      required this.platformUserIdentifier,
      required this.platformAvatarUrl,
      required this.additionalParameters});

  factory PlatformInfo.fromMap(Map<String, dynamic> json) => PlatformInfo(
      platformSlug: json['platformSlug'],
      platformUserId: json['platformUserId'],
      platformUserHandle: json['platformUserHandle'],
      platformUserIdentifier: json['platformUserIdentifier'],
      platformAvatarUrl: json['platformAvatarUrl'],
      additionalParameters: json['additionalParameters']);

  Map<String, dynamic> toMap() => {
        'platformSlug': platformSlug,
        'platformUserId': platformUserId,
        'platformUserHandle': platformUserHandle,
        'platformUserIdentifier': platformUserIdentifier,
        'platformAvatarUrl': platformAvatarUrl,
        'additionalParameters': additionalParameters
      };
}
