import 'package:flutter/material.dart';
import 'package:projetflutter/screens/auth/signin.dart';
import 'package:projetflutter/theme.dart';

import '../../widgets/loginform.dart';
import '../../widgets/loginoption.dart';
import '../../widgets/primarybutton.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});


  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 120,
            ),
          Text(
            'Ravie de vous revoir ',
            style: titleText,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                'Vous êtes nouveau ?',
                style: subTitle,
              ),
              const SizedBox(
                width: 5,
              ),
              GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()));
                    },
                    child: Text(
                      'Inscrivez-Vous',
                      style: textButton.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                      ),
                    ),
                  )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const LoginForm(),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Mot de passe oublié ?',
            style: TextStyle(
              color: kZambeziColor,
              fontSize: 14,
              decoration: TextDecoration.underline,
              decorationThickness: 1,
            )
          ),
          const SizedBox(
            height: 20,
          ),
          // const PrimaryButton(
          //   buttonText: 'Connexion',
          // ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Ou Connectez-vous avec:',
          ),
          const SizedBox(
            height: 20,
          ),
          const LoginOption(),
        ],),
      )
    );
  }
}