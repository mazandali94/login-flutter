import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext e) {
    return MaterialApp(
      home: Scaffold(
        //  backgroundColor: Colors.lightGreenAccent,
        appBar: AppBar(
          title: Text("Wellcome"),
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.lime,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text('Username'),
                ),
                //    Container(
                //    child: Image(
                //    image: 'assets/logos/facebook.jpg',
                //),
                //    ),
                Container(
                  width: 480,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Username",
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        icon: Padding(
                          padding: EdgeInsets.only(top: 11.0),
                        ),
                        border: OutlineInputBorder(),
                        hintText: "Enter your Email"),
                  ),
                ),
                Container(
                  child: Text("Password"),
                ),
                Container(
                  width: 480,
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.blueGrey),
                        icon: Padding(
                          padding: EdgeInsets.only(top: 11.0),
                          // child: Icon(Icon.lock),
                        ),
                        border: OutlineInputBorder(),
                        hintText: "Enter your Password"),
                  ),
                ),
                Container(
                  child: ElevatedButton(child: Text("Login"), onPressed: null),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
