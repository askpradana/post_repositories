import 'package:flutter/material.dart';
import 'package:post_method/model/api_manager.dart';
import 'package:post_method/model/barang.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Barang barang = null;
  _HomeState({this.barang});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text((barang!=null)
              ? barang.id + barang.job + barang.name
              : "Belom konek"
            ),
            RaisedButton(
              onPressed: (){
                Barang.connectToApi("baba", "Nganggur").then((value) {
                  barang = value;
                  setState(() {
                    
                  });
                });
              },
              child: Text("Teken"),
            )
          ],
        ),
      ),
    );
  }
}