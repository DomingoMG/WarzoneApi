/// This file is a part of SoundVolumeView (https://github.com/DomingoMG/WarzoneApi).
///
/// Copyright (c) 2022, Domingo Montesdeoca González <DomingoMG97@gmail.com>.
/// All rights reserved.
/// Use of this source code is governed by MIT license that can be found in the LICENSE file.
///


class WlRatio {
   
	int? rank;
	double? percentile;
	String? displayName;
	String? displayCategory;
	String? category;
	Map<String, dynamic>? metadata;
	double? value;
	String? displayValue;
	String? displayType;

	WlRatio({
    this.rank, 
    this.percentile, 
    this.displayName, 
    this.displayCategory, 
    this.category, 
    this.metadata, 
    this.value, 
    this.displayValue, 
    this.displayType
  });

  factory WlRatio.fromMap( Map<String, dynamic> json ) => WlRatio(
    rank: json['rank'],
    percentile: json['percentile'],
    displayName: json['displayName'],
    displayCategory: json['displayCategory'],
    category: json['category'],
    metadata: json['metadata'] ?? {},
    value: json['value'] != null ? double.parse(json['value'].toString()) : 0,
    displayValue: json['displayValue'],
    displayType: json['displayType']
  );

	Map<String, dynamic> toMap() => {
    'rank': rank,
    'percentile': percentile,
    'displayName': displayName,
    'displayCategory': displayCategory,
    'category': category,
    'metadata': metadata,
    'value': value,
    'displayValue': displayValue,
    'displayType': displayType
	};
  
}