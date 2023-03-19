import 'package:diet_book/diet_home_pade.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _homepage();
  }
}

class _homepage extends State<homepage> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  double? _Calcuation;
  /* String? _CalResult;*/
  String? _result;

  void calculateBMI(double height, double weight) {
    if (height != null && weight != null) {
      setState(() {
        double heightSquare = height * height;
        _Calcuation = weight / heightSquare;
        /*  _CalResult = _Calcuation.toString();*/
        if (_Calcuation! < 18.5) {
          _result = "You are underweight";
        } else if (_Calcuation! < 25) {
          _result = 'You body is fine';
        } else if (_Calcuation! < 30) {
          _result = 'You are overweight';
        } else {
          _result = 'You are obese';
        }
      });
    }
  }

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
        appBar: AppBar(title: Text('Home')),
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child: Text(
                "Calculate BMI",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
              child: TextField(
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11)),
                    hintText: "Enter your age",
                    labelText: "Age",
                    prefixIcon: Icon(Icons.person)),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
              child: TextField(
                controller: _heightController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11)),
                    hintText: "Enter your height (Mtr)",
                    labelText: "Height",
                    prefixIcon: Icon(Icons.height)),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
              child: TextField(
                controller: _weightController,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11)),
                    hintText: "Enter your weight (KG)",
                    labelText: "Weight",
                    prefixIcon: Icon(Icons.line_weight)),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
              child: ElevatedButton(
                onPressed: () {
                  calculateBMI(double.parse(_heightController.text),
                      double.parse(_weightController.text));
                  _showDialog(context, _result!);
                },
                child: Text('Get Result'),
              ),
            )
          ],
        ),
      ),
    ]);
  }

  void _showDialog(BuildContext context, String result) {
    showDialog(
        context: context,
        builder: ((context) {
          return Dialog(
            child: Container(
              color: Colors.lightBlueAccent,
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/alterboxpic.png'),
                    radius: 50,
                  ),
                  Text(
                    'BMI = ${_Calcuation?.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    result,
                    style: TextStyle(fontSize: 20),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => diethome())));
                      },
                      child: Text('Maintain Weight'))
                ],
              ),
            ),
          );
        }));
  }
}
