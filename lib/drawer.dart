import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Text(
          'Hello',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      drawer: Drawer(
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
                
                Navigator.pushNamed(context, '/predictgender');
              },
              title: Text('MYSHOP'),
              
              
            ),
            ListTile(
              onTap: () {
                 Navigator.pushNamed(context, '/userdetail');
              },
              title: Text('PRIVATE LIST'),
            ),
            ListTile(
              onTap: () {
                 Navigator.pushNamed(context, '/userdetail');
              },
              title: Text('CATEGORIES'),
            ),
              ListTile(
              onTap: () {
                 Navigator.pushNamed(context, '/userdetail');
              },
              title: Text('NOTIFICATIONS'),
            ),
              ListTile(
              onTap: () {
                 Navigator.pushNamed(context, '/userdetail');
              },
              title: Text('RECENTLY ADDED'),
            ),
              ListTile(
              onTap: () {
                 Navigator.pushNamed(context, '/userdetail');
              },
              title: Text('FOLLOWERS'),
            ),
              ListTile(
              onTap: () {
                 Navigator.pushNamed(context, '/userdetail');
              },
              title: Text('BLOCK LIST'),
            ),
              ListTile(
              onTap: () {
                 Navigator.pushNamed(context, '/userdetail');
              },
              title: Text('PAYTM'),
            ),
              ListTile(
              onTap: () {
                 Navigator.pushNamed(context, '/userdetail');
              },
              title: Text('FEEDBACK'),
            ),
              ListTile(
              onTap: () {
                 Navigator.pushNamed(context, '/userdetail');
              },
              title: Text('INVITE'),
            ),
              ListTile(
              onTap: () {
                 Navigator.pushNamed(context, '/userdetail');
              },
              title: Text('SUBSCRIPTION'),
            ),
              ListTile(
              onTap: () {
                 Navigator.pushNamed(context, '/userdetail');
              },
              title: Text('LOGOUT'),
            )
            
          ],
          
        ),
        
      ),
     
    );
  }
}
