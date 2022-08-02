/// This file is a part of WarzoneAPi (https://github.com/DomingoMG/WarzoneApi).
///
/// Copyright (c) 2022, Domingo Montesdeoca González <DomingoMG97@gmail.com>.
/// All rights reserved.
/// Use of this source code is governed by MIT license that can be found in the LICENSE file.
///

class WarzoneSearch {
  int? platformId;
  String? platformSlug;
  String? platformUserIdentifier;
  String? platformUserId;
  String? platformUserHandle;
  String? avatarUrl;
  String? status;
  String? additionalParameters;

  WarzoneSearch(
      {this.platformId,
      this.platformSlug,
      this.platformUserIdentifier,
      this.platformUserId,
      this.platformUserHandle,
      this.avatarUrl,
      this.status,
      this.additionalParameters});

  factory WarzoneSearch.notFound() => WarzoneSearch();

  WarzoneSearch.fromMap(Map<String, dynamic> json) {
    platformId = json['platformId'];
    platformSlug = json['platformSlug'].toString();
    platformUserIdentifier = json['platformUserIdentifier'].toString();
    platformUserId = json['platformUserId'].toString();
    platformUserHandle = json['platformUserHandle'].toString();
    avatarUrl = json['avatarUrl'].toString();
    status = json['status'].toString();
    additionalParameters = json['additionalParameters'].toString();
  }

  Map<String, dynamic> toMap() => {
        'platformId': platformId,
        'platformSlug': platformSlug,
        'platformUserIdentifier': platformUserIdentifier,
        'platformUserId': platformUserId,
        'platformUserHandle': platformUserHandle,
        'avatarUrl': avatarUrl,
        'status': status,
        'additionalParameters': additionalParameters
      };
}
