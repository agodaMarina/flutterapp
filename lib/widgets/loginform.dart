import 'package:flutter/material.dart';
import 'package:flutter/material.dart%20';

import '../theme.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInputForm('Email',false),
        buildInputForm('Mot de passe',true),
      ],
    );
  }

  Padding buildInputForm(String label, bool pass){
      return Padding(
        padding: const EdgeInsets.symmetric(vertical:5),
         
          child: TextFormField(
          obscureText: pass ? _isObscure : false,
          decoration: InputDecoration(
              labelText: label,
              labelStyle: const TextStyle(
                color: kTextFieldColor,
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: kPrimaryColor),
              ),
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
                            ),
                    )
                  : null),
        ),
        
      );
  
    }
}