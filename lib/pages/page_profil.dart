import 'package:app_ingc1/components/end_drawer_perso.dart';
import 'package:flutter/material.dart';

class PageProfil extends StatelessWidget {
  const PageProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: EndDrawerPerso(),
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