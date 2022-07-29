import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class InputNomor extends StatefulWidget {
  InputNomor({Key? key}) : super(key: key);

  @override
  State<InputNomor> createState() => _InputNomorState();
}

class _InputNomorState extends State<InputNomor> {
  TextEditingController ctrNomor = new TextEditingController();
  TextEditingController ctsNama = new TextEditingController();
  TextEditingController ctrAlamat = new TextEditingController();
  String nomor = "";
  String nama = "";
  String alamat = "";

  Widget txtInput(String username, TextEditingController controller){
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: username,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nomor Telepon'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(children: [
          txtInput("Nama", ctsNama),
          SizedBox(
            height: 10,
          ),
          txtInput("Alamat", ctrAlamat),
          SizedBox(
            height: 10,
          ),
          txtInput('Nomor Telepom', ctrNomor),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: (() {
                nomor = ctrNomor.text;
                nama = ctsNama.text;
                alamat = ctrAlamat.text;
                Navigator.pop(context, 'Nama : $nama\nAlamat : $alamat\nNomor Telepon : $nomor');

              }),
              child: Text('Simpan')),
        ]),
      ),
    );
  }
}