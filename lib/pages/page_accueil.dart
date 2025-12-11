import 'package:app_ingc1/components/end_drawer_perso.dart';
import 'package:flutter/material.dart';


class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: EndDrawerPerso(),
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
        // actions: [
        //   IconButton(
        //     tooltip: 'Rechercher',
        //     onPressed: () => {
        //       //Instruction pour naviguer vers la page de recherche
        //       print("Page de recherche ici") 
        //     },
        //     icon: const Icon(Icons.search)),
        // ],
      ),
      body:  Center( //qui prend un widget comme type
        child: Container(
          margin: EdgeInsets.all(20),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.green, width: 4)
            
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical, //ici on veut scroller verticalement
            child: Column( //pour dire l'enfant de body, si c'était plusieurs enfants on allait mettre children ici au lieu de child
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              //children sous la forme de liste
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Card(
                    elevation: 10,
                    child: Image.asset("assets/images/logo-esmt.jpg", width: 150, height: 150), 
                  ),
                  
                ),
                Container(width: 150,height: 150,color: Colors.red,),
                Container(
                        margin: EdgeInsets.all(20),
                        child: ClipRRect(
                        borderRadius: BorderRadius.circular(50), 
                        child: Image.asset("assets/images/logo-esmt.jpg", width: 150, height: 150),
                        ),
                      ),
                Container(
                        width: 150,
                        height: 150,
                        color: Colors.purple,
                      ),
                Text("Bienvenue !!"),
                Text("Ceci est la page d'accueil"),
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 150),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    
                  ),
                  child: Image.asset("assets/images/logo-esmt.jpg")
                )
            
              ],
            ),
          ),
        ),
        // Quand il y'a un point d'interrogation au niveau du type des variable cela veut dire que la variable peut être nulle à défaut de "late" qui veut dire qu'elles ne peuvent pas être nulles
      ),
    );
    
  }
}