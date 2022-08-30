import 'dart:convert';

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
                if(data1.length == data2.length){
                  for(int i=0; i<data1.length;i++){
                    if(data1[i] == data2[i]){
                      if(i == data1.length-1){
                        print("Aynı");
                      };
                    }
                    else{
                      print("Farklı");
                      i = data1.length;
                    };
                  };
                }
                else{
                  print("Farklı");
                };
                print(data1);
                print(data2);
              },
            ),
          ],
        ),
      ),
    );
  }
}