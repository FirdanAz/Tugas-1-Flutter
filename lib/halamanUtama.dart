import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas_1/inputNomor.dart';

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  var data = 'Nama : \nAlamat : \nNomor Telepon : ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: new Container(
        margin: EdgeInsets.all(10),
        child: new Column(
          children: <Widget> [
          new Text(data, textAlign: TextAlign.left,),
          Center(
            child: Container(
              child: ElevatedButton(
                  onPressed: (() async{
                    final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => InputNomor(),));
                    setState(() {
                      data = result;
                    });
                  }),
                  child: Text('Masukkan Data', style: TextStyle(color: Colors.white),)),
            ),
          )
          ],)
      ),
    );
  }
}