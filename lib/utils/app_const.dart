import 'package:flutter/material.dart';


import '../pages/page_accueil.dart';
import '../pages/page_parametre.dart';
import '../pages/page_profil.dart';

abstract class AppConst {

  static const String titreApp = "INGC ESMT";
  static final routes= {
     "/accueil": (context) => PageAccueil(),
     "/profil": (context) => PageProfil(),
     "/parametre": (context) => PageParametre(),
  };

  static final ThemeData theme = ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.green,
            primary: Colors.purple,
            secondary: Colors.amber,
            tertiary: Colors.blue ),
            useMaterial3: true, // permet d'utiliser les dernières avancées de l'application flutter pour de beaux graphes
            textTheme: TextTheme(
                
            )
  );
}