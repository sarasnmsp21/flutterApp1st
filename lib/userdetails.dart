import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserDetail(),
    ),
  );
}
class UserDetail extends StatefulWidget {
  @override
  _UserDetailState createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Saraswati Gauda'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
           Center(
             child: CircleAvatar(
               backgroundImage: AssetImage('assets/image1.jpg'),
               radius: 40.0,
             ),
              
             ),
              SizedBox(
               height: 10.0,),
             Center(
               child: Text(
                 'saras@gmail.com',
                 style: TextStyle(
                   color: Colors.grey,
                 ),
                 ),
             ),
          
             Divider(
               height: 90.0,
               color: Colors.grey[800],
             ),
             Text(
               'Name',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
             ),
             SizedBox(
               height: 10.0,),
               Text(
               'Saraswati Gauda',
                style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
             ),
                SizedBox(
               height: 30.0,),
                Text(
               'Contact',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
             ),
             SizedBox(
               height: 10.0,),
               Text(
               '9702682933',
                style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
             ),
                SizedBox(
               height: 30.0,),

                Text(
               'Last Logged In',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
             ),
             SizedBox(
               height: 10.0,),

               Text(
               'Tue 20:12:01',
                style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
             ),
                SizedBox(
               height: 30.0,),
          ],
        ),
      ),
    );
  }
}