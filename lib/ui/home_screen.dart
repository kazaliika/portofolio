
import 'package:flutter/material.dart';

import 'package:portofolio/ui/info_detail_screen.dart';
import 'package:portofolio/ui/add_story_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(context),
      body: Center(child: Text("No Story for Today")),
      drawer: _Drawer(context),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => AddStoryScreen())
        );
      },
        child: Icon(Icons.add_chart),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[BottomNavigationBarItem(
            icon: Icon(Icons.home_work_sharp),
            label: 'Home'
        ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_off),
              label: 'Search'
          ),
        ],
      ),
    );
  }

  Drawer _Drawer(context) => Drawer(
    child:
      ListView(
        children: [
          DrawerHeader(
            child:
              Text("App Info",
              style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 24),
          ),
          ),
      ListTile(
        leading: Icon(
            Icons.person_outlined,
            size: 35
        ),
        title: Text("Account",
          style: TextStyle(
              fontSize: 24,
              color: Colors.deepOrange
          ),
        ),
      ),
          ListTile(
        leading: Icon(
            Icons.settings_applications,
            size: 35
        ),
        title: Text("Settings",
          style: TextStyle(
              fontSize: 24,
              color: Colors.deepOrange
          ),
        ),
      ),
          ListTile(
        leading: Icon(
            Icons.exit_to_app,
            size: 35
        ),
        title: Text("Exit",
          style: TextStyle(
              fontSize: 24,
              color: Colors.deepOrange
          ),
        ),
      ),
    ],
  ),
  );

  AppBar _AppBar(context) => AppBar(title: Text("Jumawa",style: TextStyle(color: Colors.white),),
    backgroundColor: Colors.deepOrange,
    centerTitle: true,
    actions: [IconButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => InfoDetailScreen())
      );
    }, icon: Icon(Icons.info,color: Colors.white,))],
  );
}
