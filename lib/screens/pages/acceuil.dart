import 'package:flutter/material.dart';
import 'package:projetflutter/screens/card.dart';

import '../../theme.dart';
import '../../widgets/recentesfactures.dart';

class Acceuil extends StatefulWidget {
  const Acceuil({super.key});

  @override
  State<Acceuil> createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           const Text(
              'Acceuil',
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_active_outlined,
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
      body:  Column(
        children: [
          CardsList(),
          const Recentesfactures(),
        ],
      )
    );
  }
}