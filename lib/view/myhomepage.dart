import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  var t1 = TextEditingController();
  var t2 = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            ElevatedButton(
              child: Text("Karşılaştır"),
              onPressed:(){
                String ilk = t1.text;
                String ikinci = t2.text;
                var data1 = utf8.encode(ilk);
                var data2 = utf8.encode(ikinci);
                var hash1 = sha256.convert(data1);
                var hash2 = sha256.convert(data2);
                if(hash1==hash2){
                  print("Aynı");
                }
                else{
                  print("Farklı");
                };
                print(hash1);
                print(hash2);
              },
            ),
          ],
        ),
      ),
    );
  }
}