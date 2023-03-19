import 'package:diet_book/homepage.dart';
import 'package:diet_book/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Diet Book",
      home: Stack(children: [
        Center(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/dietback.png"),
                    fit: BoxFit.cover)),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(title: Text("Diet Book")),
          body: LoginPage(),
        ),
      ]),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginPage();
  }
}

class _LoginPage extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          child: Text(
            "Diet Book",
            style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 30,
                fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          child: Text(
            "logIn ",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: TextField(
            controller: nameController,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
                hintText: "User Name/Email",
                label: Text('User Name/Email'),
                prefixIcon: Icon(Icons.mail)),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: TextField(
            obscureText: true,
            controller: passwordController,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
                hintText: "Password",
                label: Text('Password'),
                prefixIcon: Icon(Icons.lock)),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Forgot Password",
            style: TextStyle(color: Colors.blue, fontSize: 15),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(50, 30, 50, 30),
          child: ElevatedButton(
            child: Text("Login"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => homepage())));
            },
          ),
        ),
        Row(
          children: [
            Text(
              "Does not have account?",
              style: TextStyle(color: Colors.black),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => SignUp())));
              },
              child: Text(
                "Sign Up",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        )
      ],
    );
  }
}
