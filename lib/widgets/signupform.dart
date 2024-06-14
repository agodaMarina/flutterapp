import 'package:flutter/material.dart';
import 'package:projetflutter/screens/pages/home.dart';

import '../theme.dart';


class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});
  
  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool _isObscure=true;
  
  
 

  @override
  Widget build(BuildContext context) {
    return Column(
     
      children: [
        buildInputForm('Prénom', false),
        buildInputForm('Nom', false),
        buildInputForm('Email', false),
        buildInputForm('Mot de passe', true),
        buildInputForm('téléphone', false),
        buildInputForm('rôle', false),
        const SizedBox(height: 20),
          ElevatedButton(
            onPressed:() {
               Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
            },
            child:Text('S\'inscrire',
            style: textButton.copyWith(color: kWhiteColor)),
          ),
      ],
    );
  }

  Padding buildInputForm(String hint, bool pass) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: TextFormField(
          
          obscureText: pass ? _isObscure : false,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: kTextFieldColor),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: kPrimaryColor)),
            suffixIcon: pass
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    icon: _isObscure
                        ? const Icon(
                            Icons.visibility_off,
                            color: kTextFieldColor,
                          )
                        : const Icon(
                            Icons.visibility,
                            color: kPrimaryColor,
                          ))
                : null,
          ),
          validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Veuillez entrer votre $hint';
          }
          return null;
        },
        )        
        );
  }
}
