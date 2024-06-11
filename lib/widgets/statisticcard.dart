
import 'package:flutter/material.dart';
import 'package:projetflutter/theme.dart';


import '../themeColors.dart';
import '../themestyles.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({super.key});

  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 216,
        width: 380,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('5.720,30 €', style: ThemeStyles.cardMoney),
                    
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  bottom: 32.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Montant Total', style: ThemeStyles.cardDetails),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: Text('12/04/2021', style: ThemeStyles.cardDetails),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        //   child: Text('****', style: ThemeStyles.cardDetails)
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        //   child: Text('****', style: ThemeStyles.cardDetails),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 6.0),
                        //   child: Text('9018', style: ThemeStyles.cardDetails),
                        // ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}