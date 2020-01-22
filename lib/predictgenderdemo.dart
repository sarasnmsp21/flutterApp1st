import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

class PredictGender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _nameController = TextEditingController();
  var result;

  predictGender(String name) async{
    var url = "https://api.genderize.io/?name=$name";
    var res = await http.get(url);
    print(res.body);
    var body = jsonDecode(res.body);
    result = "Gender: ${body['gender']}, Probability: ${body['probability']}";
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         centerTitle: true,
        title: Text("Gender Predictor"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
        Text('Enter a name to predic its gender.'),
        Padding(padding: const EdgeInsets.all(18.0),
        child: TextField(
          autofocus: true,
          controller: _nameController,
          decoration: InputDecoration(
            hintText: 'Name'
          ),
        ),),
        RaisedButton(
          onPressed: () => predictGender(_nameController.text),
          child: Text('Predict'),
        ),
        FlatButton(
          onPressed: (){
          },
          child: Text('Test Button'),
        ),
        if(result != null) Text(result)
      ],
      )
     
    ),
    );
  }
}