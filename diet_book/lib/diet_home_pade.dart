import 'package:diet_book/weightgain.dart';
import 'package:diet_book/weightloss.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class diethome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _diethome();
  }
}

class _diethome extends State<diethome> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Diet Book')),
      body: Container(
        color: Colors.blueGrey,
        child: Column(
          children: [
            Center(
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 10),
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(11)),
                child: Text(
                  'Diet Plan',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (((context) => weightloss()))));
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 15),
                  height: 250,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(11),
                      image: DecorationImage(
                          image: AssetImage("assets/images/weightloss.png"),
                          fit: BoxFit.cover)),
                  child: Text(
                    'Weight Loss',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (((context) => weightgain()))));
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 15),
                  height: 250,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(11),
                      image: DecorationImage(
                          image: AssetImage("assets/images/weightgain.png"),
                          fit: BoxFit.cover)),
                  child: Text(
                    'Weight Gain',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            /* Center(
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 10),
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(11),
                    image: DecorationImage(
                        image: AssetImage("assets/images/fatloss.png"),
                        fit: BoxFit.cover)),
                child: Text(
                  'Fat Loss',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}



/*Card(
            shadowColor: Colors.black,
            elevation: 12,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: AssetImage("assets/images/weightloss.png"),
                    child: InkWell(
                      onTap: () {},
                    ),
                    fit: BoxFit.cover,
                  ),
                  Text(
                    "Weight Loss",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24),
                  )
                ],
              ),
            ),
          ),
          Card(
            shadowColor: Colors.black,
            elevation: 12,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Ink.image(
                    image: AssetImage("assets/images/weightloss.png"),
                    child: InkWell(
                      onTap: () {},
                    ),
                    fit: BoxFit.cover,
                  ),
                  Text(
                    "Weight Loss",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24),
                  )
                ],
              ),
            ),
          )*/