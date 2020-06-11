import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'Ninja ID',
  home: HomePage()
));

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int ninjaLevel = 23;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => ninjaLevel++),
        child: Icon(
          Icons.add,
          color: Colors.grey[800],
        ),
        backgroundColor: Colors.amber[500],
      ),
      appBar: AppBar(
        title: Text('Ninja ID'),
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('/marshmello.jpg'),
              radius: 100.0,
            ),
            Divider(
              height: 35.0,
              color: Colors.grey[500]
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 16,
              ),
            ),
            Text(
              'Carlo Miguel Dy',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25.0),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 16,
              ),
            ),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'carlomigueldy@gmail.com',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[400]
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}