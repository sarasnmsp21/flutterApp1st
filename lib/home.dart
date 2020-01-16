import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: buildDrawer(),
      body: buildBody(),
);
  }

  Widget buildBody() {
    return GridView.count(
      crossAxisCount: 2,
      children: new List<Widget>.generate(8, (index){
        return new GridTile(
          child: new Card(
            color: Colors.blue.shade200,
            child: new Center(
              child: new Text('Hello'),
            ),
          ),
        );

      })
      

    );
    
  }

Widget buildDrawer() {
   return Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text('sarasnmsp21@gmail.com'),
              accountName: Text('Saraswati Gauda'),
              currentAccountPicture: CircleAvatar(
                child: Text('S'),
              ),
              
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/testpage');
              },
              title: Text('SEARCH DEMO'),
              
            ),
            ListTile(
              onTap: () {
                 Navigator.pushNamed(context, '/predictgender');
              },
              title: Text('PREDICT GENDER DEMO'),
            ),
            ListTile(
              onTap: () {
                 Navigator.pushNamed(context, '/userdetail');
              },
              title: Text('USER INFO'),
            ),
              ListTile(
              onTap: () {
                 Navigator.pushNamed(context, '/login');
              },
              title: Text('LOGOUT'),
            )
            
          ],
          
        )
    
   );
}

  
}
