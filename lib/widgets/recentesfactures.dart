import 'package:flutter/material.dart';

import '../themestyles.dart';
import 'facturecard.dart';


class Recentesfactures extends StatefulWidget {
  const Recentesfactures({super.key});

  @override
  _RecentesfacturesState createState() => _RecentesfacturesState();
}

class _RecentesfacturesState extends State<Recentesfactures> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              right: 15.0,
              bottom: 16.0,
              top: 32.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Historique', style: ThemeStyles.primaryTitle),
                Text('See All', style: ThemeStyles.seeAll),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: const [
                TransactionCard(
                  color: Colors.black,
                  letter: 'F',
                  title: 'Fintory GmbH',
                  subTitle: 'Finance Landing Page',
                  price: '- 5.720,30 €',
                ),
                TransactionCard(
                  color: Color(0xfffe695d),
                  letter: 'D',
                  title: 'Domink Schmidit',
                  subTitle: 'Mykonos Hotel Booking',
                  price: '- 620,30 €',
                ),
                TransactionCard(
                  color: Color(0xff103289),
                  letter: 'E',
                  title: 'Evolt.io',
                  subTitle: 'Evolt UI Kit',
                  price: '- 59,99 €',
                ),
                TransactionCard(
                  color: Colors.greenAccent,
                  letter: 'F',
                  title: 'Fintory GmbH',
                  subTitle: 'Finance Landing Page',
                  price: '- 5.720,30 €',
                ),
                TransactionCard(
                  color: Colors.amberAccent,
                  letter: 'E',
                  title: 'Evolt.io',
                  subTitle: 'Evolt UI Kit',
                  price: '- 59,99 €',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}