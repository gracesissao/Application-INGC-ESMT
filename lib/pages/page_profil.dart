import 'package:flutter/material.dart';

class PageProfil extends StatelessWidget {
  const PageProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView( // widget comme colonne
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue
            ),
            child: Text("Menu",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            ),

            //trailing est à droite et leading est à gauche
            ListTile(title: Text("Accueil", 
            style: TextStyle(color: Colors.blue)),
            trailing: Icon(Icons.chevron_right), 
            onTap: () {
              Navigator.pushNamed(context, "/accueil");
            }),
            ListTile(title: Text("Paramètres",
            style: TextStyle(color: Colors.blue)), 
            trailing: Icon(Icons.chevron_right),
             onTap: () {
              Navigator.pushNamed(context, "/accueil");
            }),
          ],
        ),
      ),
      appBar: AppBar(title: const Text("Profil")),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //children sous la forme de liste
          children: [
            Text("Page Profil")
          ]
        ),
      ),

      );
}
}