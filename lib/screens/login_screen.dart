import 'package:app2/widgets/input_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class LoginScreen extends StatefulWidget {
  final String screenTitle;
  const LoginScreen({Key key, this.screenTitle}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                      InputWidget(
                        labelText: "Username",
                        showText: true,
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      InputWidget(
                        labelText: "Password",
                        showText: false,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          // dense: true,
                          value: _remeberMe,
                          checkColor: Colors.grey.shade200,

                          onChanged: (bool checked) {
                            setState(() {
                              _remeberMe = checked;
                            });
                          },
                        ),
                        Text(
                          "Remeber me",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15.0,
                          ),
                        ),
                      ],
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
              width: MediaQuery.of(context).size.width * 0.65,
              child: ElevatedButton(
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 25.0),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    // horizontal: 150.0,
                    vertical: 15.0,
                  ),
                  elevation: 0.0,
                  shadowColor: Colors.transparent,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't Have an account? "),
                InkWell(
                  onTap: () {
                    print("Create account pressed");
                  },
                  child: Text(
                    "Create an account.",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
