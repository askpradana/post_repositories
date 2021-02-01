import 'package:flutter/material.dart';
import 'package:post_method/model/api_manager.dart';
import 'package:post_method/model/barang.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Barang barang = null;
  ModelBarang modelBarang = null;
  //_HomeState({this.barang});
  _HomeState({this.modelBarang});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text((modelBarang!=null)
              // ? barang.id + barang.job + barang.name
              ? modelBarang.description
              : "Belom konek"
            ),
            RaisedButton(
              onPressed: (){
                ModelBarang.connectToApi().then((value) {
                  modelBarang = value;
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