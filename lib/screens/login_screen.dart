import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final String screenTitle;
  const LoginScreen({Key key, this.screenTitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool _remeberMe = false;
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Login",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 75,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Username",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          // labelText: "Username",
                          // border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.grey.shade200,
                        ),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      Text(
                        "Password",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          // labelText: "Username",
                          // border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.grey.shade200,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: CheckboxListTile(
                        // dense: true,
                        title: Text(
                          "Remeber me",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15.0,
                          ),
                        ),
                        value: _remeberMe,
                        onChanged: (checked) {
                          _remeberMe = !_remeberMe;
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              child: ElevatedButton(child: Text("Login"), onPressed: null),
            ),
            Text("Dont have account? create account"),
          ],
        ),
      ),
    );
  }
}
