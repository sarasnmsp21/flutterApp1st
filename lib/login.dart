import 'package:flutter/material.dart';
import 'drawer.dart';

void main() => runApp(MaterialApp(
  home: Login(),
));

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[ 
                  SizedBox(
                      height: 155.0,
                      child: Image.asset(
                        "assets/image3.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                SizedBox(height: 45.0,
                ),
             
                  TextField(
                    decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: "Email",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                  ),
                ),
           
                
                // SizedBox(height: 25.0),
                //  TextField(
                //     decoration: InputDecoration(
                //     contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                //     hintText: "Mobile",
                //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                //   ),
                // ),
                SizedBox(
                  height: 25.0,
                ),
                 TextField(
                    decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: "Password",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                  ),
                ),
                
                SizedBox(
                  height: 25.0,
                ),
                RaisedButton(
                  child:MaterialButton(
                    minWidth: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Homepage');
                    },
                    child: Text('Login',
                    textAlign: TextAlign.center,
                    style: style.copyWith(
                      
                    color: Colors.white, fontWeight: FontWeight.bold),
                    
                    ),
                    
                  )
                  
                )
                
                
              ],
            ),
          ),
        ),
      ),
        )
    );
  }
}

