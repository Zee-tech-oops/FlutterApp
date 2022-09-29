import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Properties of Scaffold

      //01--> BackGround Color
      backgroundColor: Colors.blueGrey,

      //02--> AppBar
      appBar: AppBar(
        title: const Text("Hello beautiful"),
        backgroundColor: Color.fromARGB(255, 83, 85, 84),
      ),

      //03--> Body
      body: Container(
        // width: 200,
        // height: 200,
        // height: double.infinity,
        // color: Color.fromARGB(76, 15, 34, 141),
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(20),
        child: const Center(
          child: Text("Myei Baby!", style: TextStyle(color: Colors.black, fontSize: 18),),
        )
      ),

      //04--> Floating Action Button
      floatingActionButton: FloatingActionButton(
        elevation: 15.0,
        child: const Icon(Icons.maps_home_work_outlined),
        onPressed: () {
        //actions
        },
      ),

      //05--> Drawer
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 68, 63, 65)),
              child: Text("Hello Pakistan",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 23),),
            ),
            ListTile(title: Text("Home"),),
            ListTile(title: Text("Search"),)
          ],
        )
      ),

      //06--> Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        fixedColor: Colors.blueAccent,

        items: const[
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home)),

            BottomNavigationBarItem(
              label: "Mail",
              icon: Icon(Icons.mail_rounded)),

            BottomNavigationBarItem(
              label: "Call",
              icon: Icon(Icons.call)),
        ],

        onTap: (int indexOfItem) {}

      ),
      
      );

  }
}