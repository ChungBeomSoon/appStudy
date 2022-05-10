import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class Store2 extends ChangeNotifier {
  var name = 'tony';
}

class Store1 extends ChangeNotifier {
  var name = 'john kim';
  var follower = 0;
  bool followerChecker = false;
  var profileImage = [];

  getData() async {
    var result = await http
        .get(Uri.parse('https://codingapple1.github.io/app/profile.json'));
    var result2 = jsonDecode(result.body);
    profileImage = result2;
    notifyListeners();
  }

  addFollower() {
    if (!followerChecker) {
      follower++;
      followerChecker = true;
    } else {
      follower--;
      followerChecker = false;
    }
    notifyListeners();
  }
}
