import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<String> images = [
    "assets/images/facebook.png",
    "assets/images/instagram.png",
    "assets/images/telegram.png",
    "assets/images/twitter.png",
    'assets/images/whatsapp.png',
    "assets/images/youtube.png"
  ];

  List<String> Name = [
    "Facebook",
    "Instagram",
    "Telegram",
    "Twitter",
    "Whatsapp",
    "Youtub"
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(title: Text("List View")),
            body: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(images[index]),
                    ),
                    title: Text(Name[index]),
                    subtitle: Text("this is subtitle"),
                  ),
                );
              },
              itemCount: images.length,
              shrinkWrap: true,
              padding: EdgeInsets.all(5),
              scrollDirection: Axis.vertical,
            )));
  }
}
