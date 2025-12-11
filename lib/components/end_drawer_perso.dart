import 'package:flutter/material.dart';

class EndDrawerPerso extends StatelessWidget {
  const EndDrawerPerso({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView( // widget comme colonne
          children: [
            SizedBox(
              height: 80,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //asset si l'image se trouve dans un dossier dans l'application
                    Image.asset("assets/images/logo-esmt.jpg", width: 50, height: 50),
                    Text(
                       "Menu",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    )
                    ),
                  ],
                ),
                ),
            ),

            //trailing est à droite et leading est à gauche
            ListTile(
            tileColor: Colors.yellow,
            title: Text("Accueil", 
            style: TextStyle(color: Colors.blue)),
            trailing: Icon(Icons.chevron_right), 
            onTap: () {
              Navigator.pushNamed(context, "/accueil");
            }),
            
            //Divider(color: Colors.white,),//pour avoir une ligne horizontale séparatrice
            SizedBox(height: 20),
            ListTile(
            tileColor: Colors.yellow,
            title: Text("Paramètres",
            style: TextStyle(color: Colors.blue)), 
            trailing: Icon(Icons.chevron_right),
             onTap: () {
              Navigator.pushNamed(context, "/accueil");
            }),
          ],
        ),
      );
    
    
}
}