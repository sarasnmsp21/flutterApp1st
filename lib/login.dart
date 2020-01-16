import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(MaterialApp(
  home: Login(),
));

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool validateField = false;
  bool isError = true;

  String emailValidatorFunc(String email){
    if(email.isEmpty || email == null){
      return 'Email is Required';
    }
  }
   String passwordValidatorFunc(String password){
    if(password.isEmpty || password == null){
      return 'Password is Required';
    }
  }

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
             
                  TextFormField(
                    validator: emailValidatorFunc,
                    decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: "Email",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                  ),
                  autovalidate: validateField,
                  initialValue: '',
                ),
                SizedBox(
                  height: 25.0,
                ),
                 TextFormField(
                   obscureText: true,
                   validator: passwordValidatorFunc,
                    decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: "Password",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                  ),
                   autovalidate: validateField,
                  initialValue: '',
                ),
                
                SizedBox(
                  height: 25.0,
                ),
                RaisedButton(
                  child:Container(
                    // width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    child: Text('Login',
                    textAlign: TextAlign.center,
                    style: style.copyWith( 
                    color: Colors.white, fontWeight: FontWeight.bold), 
                    ), 
                  ), onPressed: () {
                    setState(() { validateField = true; });
                    if(!isError)
                      Navigator.pushNamed(context, '/Homepage');
                  },
                  color: Colors.green,
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

