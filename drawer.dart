import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    const imageUrl =
    "https://media.tenor.com/JWv5xOZxddUAAAAM/spiderverse-spiderpunk.gif";
    return Drawer(
      child: Container(
        color: Colors.black,
        child: ListView(
          children: [
            DrawerHeader(
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.black),
                  accountName: Text("Vishesh Tiwari"),
              accountEmail: Text("visheshtiwari2809@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: (NetworkImage(imageUrl)),
              ),
            )),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text('Home', style: TextStyle(color: Colors.deepPurple),),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.person,
                  color: Colors.white,
                ),
                title: Text('Profile', style: TextStyle(color: Colors.deepPurple),),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.cart,
                  color: Colors.white,
                ),
                title: Text('My Cart', style: TextStyle(color: Colors.deepPurple),),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.cube_box_fill,
                  color: Colors.white,
                ),
                title: Text('My Orders', style: TextStyle(color: Colors.deepPurple),),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.info_circle,
                  color: Colors.white,
                ),
                title: Text('Help and Support', style: TextStyle(color: Colors.deepPurple),),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.settings,
                  color: Colors.white,
                ),
                title: Text('Settings', style: TextStyle(color: Colors.deepPurple),),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.power,
                  color: Colors.red,
                ),
                title: Text('Logout', style: TextStyle(color: Colors.red),),
              )
          ],
        ),
      ),
    );
  }
}