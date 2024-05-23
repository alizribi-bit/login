import 'package:flutter/material.dart';

import 'Widget.dart';

class Changepassword extends StatefulWidget {
  const Changepassword({super.key});

  @override
  State<Changepassword> createState() => _ChangepasswordState();
}

class _ChangepasswordState extends State<Changepassword> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Créer un nouveau mot de passe",
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink.shade300),
              ),
              const SizedBox(
                height: 30,
              ),
              textFormFieldWidget(context, passwordController,
                  TextInputType.text, "Password", Icons.password, true),
              const SizedBox(
                height: 20,
              ),
              textFormFieldWidget(context, confirmPasswordController,
                  TextInputType.text, "Password", Icons.password, true),
              const SizedBox(
                height: 20,
              ),
              button("Confirmer"),
            ],
          ),
        ),
      ),
    );
  }
}
