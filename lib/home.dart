import 'package:flutter/material.dart';
import 'package:flutter_app/map_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

// AIzaSyASJyiti5vcyougcCT1FXnI6TCeRT2qRiQ
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.amber,
                    ),
                    IconButton(
                      icon: Icon(Icons.logout),
                      onPressed: () {},
                    )
                  ],
                ),
                Text(
                  'Jane Doe',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'janeDoe@gmail.com',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            )),
            ListTile(title: Text('Home'), leading: Icon(Icons.home)),
            ListTile(
                title: Text('My Job'), leading: Icon(Icons.local_activity)),
            ListTile(title: Text('Payment'), leading: Icon(Icons.payment)),
            ListTile(title: Text('Request Quee'), leading: Icon(Icons.list)),
            ListTile(title: Text('Setting'), leading: Icon(Icons.settings)),
            ListTile(title: Text('LogOut'), leading: Icon(Icons.logout)),
          ],
        ),
      ),
      body: MapPage(),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'My Jobs'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Payment'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Profile'),
      ]),
    );
  }
}
