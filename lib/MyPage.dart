import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
class MyPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Next Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(

              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "My Name is Ohood ",
                  style: TextStyle(color: Colors.blueAccent, fontSize: 25),
                ),
              ),
            ),
            Container(
              height: 250,

              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child:   Image.network('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
            ),

            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text(
    "012345678",
    style: TextStyle(color: Colors.blueAccent, fontSize: 25),
    ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Call Me'),
                  onPressed: () async {
    await FlutterPhoneDirectCaller.callNumber("012345678");

    }))




          ],
        ),
      ), // Column
    );
  }
}
