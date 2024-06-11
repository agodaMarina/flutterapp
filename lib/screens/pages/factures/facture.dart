import 'package:flutter/material.dart';

import '../../../theme.dart';

class FactureScreen extends StatelessWidget {
  const FactureScreen({super.key});

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
              'Factures',
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
      body: Container(
        padding: const EdgeInsets.all(20),
        child:  const Column(
          children: [
            Text(
              'Aucune facture disponible',
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Vous n\'avez pas encore de facture disponible',
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 16,
              ),
            ),
            
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed logic here
        },
        backgroundColor: kPrimaryColor,
        shape: ShapeBorder.lerp(
          const CircleBorder(),
          const RoundedRectangleBorder(),
          0.0,
        )!,
        child: const Icon(
          Icons.add_a_photo_outlined,
          color: Colors.white,
        ),
      )
    );
  }
}