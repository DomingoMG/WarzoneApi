/// This file is a part of WarzoneAPi (https://github.com/DomingoMG/WarzoneApi).
///
/// Copyright (c) 2022, Domingo Montesdeoca González <DomingoMG97@gmail.com>.
/// All rights reserved.
/// Use of this source code is governed by MIT license that can be found in the LICENSE file.
///

class UserInfo {
  String? userId;
  bool? isPremium;
  bool? isVerified;
  bool? isInfluencer;
  bool? isPartner;
  String? countryCode;
  String? customAvatarUrl;
  String? customHeroUrl;
  List<dynamic>? socialAccounts = [];
  int? pageviews;
  bool? isSuspicious;

  UserInfo(
      {this.userId,
      this.isPremium,
      this.isVerified,
      this.isInfluencer,
      this.isPartner,
      this.countryCode,
      this.customAvatarUrl,
      this.customHeroUrl,
      this.socialAccounts,
      this.pageviews,
      this.isSuspicious});

  factory UserInfo.fromMap(Map<String, dynamic> json) => UserInfo(
      userId: json['userId'].toString(),
      isPremium: json['isPremium'],
      isVerified: json['isVerified'],
      isInfluencer: json['isInfluencer'],
      isPartner: json['isPartner'],
      countryCode: json['countryCode'],
      customAvatarUrl: json['customAvatarUrl'],
      customHeroUrl: json['customHeroUrl'],
      socialAccounts: json['socialAccounts'] ?? [],
      pageviews: json['pageviews'],
      isSuspicious: json['isSuspicious']);

  Map<String, dynamic> toMap() => {
        'userId': userId,
        'isPremium': isPremium,
        'isVerified': isVerified,
        'isInfluencer': isInfluencer,
        'isPartner': isPartner,
        'countryCode': countryCode,
        'customAvatarUrl': customAvatarUrl,
        'customHeroUrl': customHeroUrl,
        'socialAccounts': socialAccounts?.map((e) => e).toList(),
        'pageviews': pageviews,
        'isSuspicious': isSuspicious,
      };
}
