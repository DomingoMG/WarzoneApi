/// This file is a part of WarzoneAPi (https://github.com/DomingoMG/WarzoneApi).
///
/// Copyright (c) 2022, Domingo Montesdeoca González <DomingoMG97@gmail.com>.
/// All rights reserved.
/// Use of this source code is governed by MIT license that can be found in the LICENSE file.
///

class Metadata {
  String? name;

  Metadata({this.name});

  factory Metadata.fromMap(Map<String, dynamic> json) =>
      Metadata(name: json['name']);

  Map<String, dynamic> toMap() => {'name': name};
}
