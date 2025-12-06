import 'package:flutter/material.dart';

class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(76, 175, 80, 1),
        foregroundColor: Colors.white,
        title: const Text("App INGC ESMT"),
        centerTitle: true,
        //leading: Icon(Icons.person), //icône simple
        //icône cliquable
        leading: IconButton(
          icon: const Icon(Icons.person),
          tooltip: 'Profil',
          onPressed: () {
            //Instruction pour naviguer vers la page profil
            print("Page de profil ici");
            //Permet de retourner à la page précédente
            Navigator.pushNamed(context, "/profil");
            //Navigator pushReplament pour repartir vers la page initiale il ne revient pas à la page antérieur
          },
        ),
        actions: [
          IconButton(
            tooltip: 'Rechercher',
            onPressed: () => {
              //Instruction pour naviguer vers la page de recherche
              print("Page de recherche ici") 
            },
            icon: const Icon(Icons.search)),
        ],
      ),
      body: const Center( //qui prend un widget comme type
        child: Column( //pour dire l'enfant de body, si c'était plusieurs enfants on allait mettre children ici au lieu de child
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          //children sous la forme de liste
          children: [
            Text("Bienvenue !!"),
            Text("Ceci est la page d'accueil"),

          ],
        ),
        // Quand il y'a un point d'interrogation au niveau du type des variable cela veut dire que la variable peut être nulle à défaut de "late" qui veut dire qu'elles ne peuvent pas être nulles
      ),
    );
    
  }
}