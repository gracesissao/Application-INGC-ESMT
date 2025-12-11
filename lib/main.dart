import 'package:app_ingc1/pages/page_accueil.dart';
import 'package:app_ingc1/pages/page_profil.dart';
import 'package:app_ingc1/pages/page_parametre.dart';
import 'package:flutter/material.dart';


void main() {
  //Instance de l'objet
  runApp(const MonApplication());
}

class MonApplication extends StatelessWidget {
  //Constructeur avec const pour optimiser
  const MonApplication({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Instance de MatérielApp et le retourner
    //C'est dans materielApp qu'on configure les paramètres générales
      return MaterialApp(
      title: 'Première Application',
      home: PageAccueil(),
      routes: {
        "/accueil": (context) => PageAccueil(),
        "/profil": (context) => PageProfil(),
        "/parametre": (context) => PageParametre(),

      },
      //Lorsqu'on veut accéder à une page qui n'existe pas
      onUnknownRoute: (context) => MaterialPageRoute(
        builder: (context) => PageAccueil(),
      )
    ); //MaterielApp
  }
}

