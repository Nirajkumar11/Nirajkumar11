import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class weightloss extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _weightloss();
  }
}

class _weightloss extends State<weightloss> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Weight Loss'),
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
                    backgroundImage: AssetImage('assets/images/water.png'),
                  ),
                ),
                trailing: Text(
                  'Upon Waking',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                title: Text(
                  'Drink a glass of lemon water with honey.',
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
                    backgroundImage: AssetImage('assets/images/eggs.png'),
                  ),
                ),
                trailing: Text(
                  'Breakfast',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                title: Text(
                  '2 Eggs with Brown Bread Toast, 1 Banana and Cup of green Tea',
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
                  '1 Bowl Dal + 2 Roti + Salad + Curd or Yogurt',
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
                    backgroundImage: AssetImage('assets/images/sandwich.png'),
                  ),
                ),
                trailing: Text(
                  'Evening',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                title: Text(
                  'Brown Bread Sandwich with low fat Cheese  or Fruit chaat',
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
                  'Curry or Dal + 2 Chapati + Vegetable/Paneer + Salad',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            /*Container(
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
