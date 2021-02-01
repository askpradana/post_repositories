// To parse this JSON data, do
//
//     final barang = barangFromJson(jsonString);

import 'dart:convert';
import 'package:http/http.dart' as http;

class Barang {
    Barang({
        this.name,
        this.job,
        this.id,
        this.createdAt,
    });

    String name;
    String job;
    String id;
    DateTime createdAt;

    factory Barang.fromRawJson(String str) => Barang.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Barang.fromJson(Map<String, dynamic> json) => Barang(
        name: json["name"],
        job: json["job"],
        id: json["id"],
        createdAt: DateTime.parse(json["createdAt"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "job": job,
        "id": id,
        "createdAt": createdAt.toIso8601String(),
    };

    static Future<Barang> connectToApi(String name, String job) async {
       String url = "https://reqres.in/api/users";
       var apiResult = await http.post(url, body: {
         "name" : name,
         "job" : job
       });
       var jsonObj = json.decode(apiResult.body);

       return Barang.fromJson(jsonObj);
    }
}
