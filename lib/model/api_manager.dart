import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:post_method/model/barang.dart';

Future createPost() async {
  String link = "https://ranting.twisdev.com/index.php/rest/items/search/api_key/teampsisthebest/";
  return await http.post(link).then((http.Response response) {
    final int statusCode = response.statusCode;

    if (statusCode == 200){
      return Barang.fromJson(jsonDecode(response.body));
    }
    throw new Exception("Error while loading data");
  });
}