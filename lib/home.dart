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
    var categories = [
    {
      'title': 'Women',
      'img': 'assets/dress.jpg',
    },
    {
      'title': 'Men',
      'img': 'assets/men.jpg',
    },
    {
      'title': 'Kids',
      'img': 'assets/children.jpg',
    },
    {
      'title': 'House',
      'img': 'assets/home.png',
    },
    {
      'title': 'Cars',
      'img': 'assets/cars.jpg',
    },
    {
      'title': 'Electronics',
      'img': 'assets/electronics.jpg',
    },
  ];
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
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.8),
        itemCount: 6,
        itemBuilder: (context, i) {
          return InkWell(
            child: Container(
              margin: EdgeInsets.all(5),
              child: Card(
                
                elevation: 2,
                child: Container(
                  child: Container(
                    color: Color.fromRGBO(0, 0, 0, 0.4),
                    child: buildTitle(categories[i]['title']),
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(categories[i]['img']),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
            ),
            onTap: () => {
                 Navigator.pushNamed(context, '/productdetail')
                },
          );
        });
  }
    Widget buildTitle(String title) {
    return Center(
      child: Container(
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
        decoration: BoxDecoration(
            border: Border.all(
                width: 2, color: Colors.white, style: BorderStyle.solid)),
      ),
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
