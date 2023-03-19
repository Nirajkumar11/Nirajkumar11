import 'package:flutter/material.dart';

class weightgain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _weightgain();
  }
}

class _weightgain extends State<weightgain> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Weight Gain'),
      ),
      body: Container(
        color: Colors.blueGrey,
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent),
              margin: EdgeInsets.only(top: 10),
              height: 100,
              width: 200,
              child: ListTile(
                leading: Container(
                  margin: EdgeInsets.only(top: 15),
                  height: 200,
                  width: 50,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/eggs.png'),
                  ),
                ),
                trailing: Text(
                  'Breakfast',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                title: Text(
                  '2 eggs brown bread sandwich + 1 cup milk + 3 cashews + 4 almonds + 2 walnuts.',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent),
              margin: EdgeInsets.only(top: 10),
              height: 100,
              width: 200,
              child: ListTile(
                leading: Container(
                  margin: EdgeInsets.only(top: 15),
                  height: 200,
                  width: 50,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/banana.png'),
                  ),
                ),
                trailing: Text(
                  'Mid Meal',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                title: Text(
                  '1 Glass Banana shake with dry fruits.',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent),
              margin: EdgeInsets.only(top: 10),
              height: 100,
              width: 200,
              child: ListTile(
                leading: Container(
                  margin: EdgeInsets.only(top: 15),
                  height: 200,
                  width: 50,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/dal.png'),
                  ),
                ),
                trailing: Text(
                  'Lunch',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                title: Text(
                  '1 cup Dal + 1 cup potato curry + 3 chapati + 1 cup rice + salad.',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent),
              margin: EdgeInsets.only(top: 10),
              height: 100,
              width: 200,
              child: ListTile(
                leading: Container(
                  margin: EdgeInsets.only(top: 15),
                  height: 200,
                  width: 50,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/spourts.png'),
                  ),
                ),
                trailing: Text(
                  'Evening',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                title: Text(
                  '1 cup sprouts salad + 2 potato cheela.',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent),
              margin: EdgeInsets.only(top: 10),
              height: 100,
              width: 200,
              child: ListTile(
                leading: Container(
                  margin: EdgeInsets.only(top: 15),
                  height: 200,
                  width: 50,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Dinner.png'),
                  ),
                ),
                trailing: Text(
                  'Dinner',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                title: Text(
                  '1 cup mix veg + 3 chapati + salad',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            /* Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent),
              margin: EdgeInsets.only(top: 10),
              height: 100,
              width: 200,
              child: ListTile(
                leading: Container(
                  margin: EdgeInsets.only(top: 15),
                  height: 200,
                  width: 50,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/water.png'),
                  ),
                ),
                trailing: Text(
                  'Water',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                title: Text(
                  'Warm water in early morning',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
             ),*/
          ],
        ),
      ),
    );
  }
}
