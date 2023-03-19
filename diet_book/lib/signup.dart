import 'package:diet_book/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(children: [
      Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/dietback.png'),
                  fit: BoxFit.cover)),
        ),
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Registration Page"),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Text(
                'Register Your Self',
                style: TextStyle(fontSize: 20, color: Colors.deepOrange),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11)),
                    hintText: "Name",
                    labelText: "Name",
                    prefixIcon: Icon(Icons.account_circle_rounded)),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11)),
                    hintText: "Email Id",
                    labelText: "Email",
                    prefixIcon: Icon(Icons.mail_lock_outlined)),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11)),
                    hintText: "Phone Number",
                    labelText: "Phone Number",
                    prefixIcon: Icon(Icons.phone)),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11)),
                    hintText: "create Passowrd",
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock)),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => homepage())));
                },
                child: Text("Submit"),
              ),
            ),
            Row(
              children: [
                Text(
                  "Login With",
                  style: TextStyle(color: Colors.black),
                ),
                Text("  "),
                CircleAvatar(
                  minRadius: 5,
                  maxRadius: 20,
                  backgroundImage: AssetImage('assets/images/google.png'),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            )
          ],
        ),
      )
    ]);
  }
}
