import 'package:flutter/material.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text('1st Page'),
        backgroundColor: Colors.blue,
        centerTitle:true,
      ),
      drawer:Drawer(
        backgroundColor:Colors.deepPurple[100],
        child:Column(
          children:[
            DrawerHeader(
              child:Icon(
                Icons.favorite,
                size:48,
              ),
            ),
            ListTile(
              leading:const Icon(Icons.home),
              title:const Text('H O M E'),
              onTap:(){
                // Navigator.pop(context);
                Navigator.pushNamed(context,'/homepage');
              }
            ),
            ListTile(
              leading:const Icon(Icons.settings),
              title:const Text('S E T T I N G S'),
              onTap:(){
                Navigator.pushNamed(context,'/settingspage');
              }
            )
          ]
        ),
      ),

    );
  }
}
