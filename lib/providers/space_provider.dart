import 'dart:convert';

import 'package:bwa_kos/models/space.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SpaceProvider extends ChangeNotifier {
  getRecommendedSpaces() async {
    var result = await http
        .get(Uri.parse("https://bwa-cozy.herokuapp.com/recommended-spaces"));

    print(result.statusCode);
    print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      print(data);
      List<Space> spaces = data.map((e) => Space.fromJson(e)).toList();
      return spaces;
    } else {
      return <Space>[];
    }
  }
}
