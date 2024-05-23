import 'package:flutter/material.dart';

import 'Sign.dart';
import 'Widget.dart';
import 'changePassword.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Login", style: Theme.of(context).textTheme.displayLarge),
                const SizedBox(
                  height: 30,
                ),
                textFormFieldWidget(context, loginController,
                    TextInputType.emailAddress, "Email", Icons.email, false),
                const SizedBox(
                  height: 20,
                ),
                textFormFieldWidget(
                    context,
                    passwordController,
                    TextInputType.visiblePassword,
                    "Password",
                    Icons.password,
                    true),
                const SizedBox(
                  height: 20,
                ),
                button("Connexion"),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey.shade400,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Changepassword()));
                  },
                  child: Text("Mot de passe oublié ?",
                      style: Theme.of(context).textTheme.bodyLarge),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Avez-vous un compte?",
                        style: Theme.of(context).textTheme.bodyMedium),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Sign()));
                      },
                      child: const Text(
                        "S'inscrire",
                        style: TextStyle(
                          fontSize: 14,
                          //color: Color.fromARGB(255, 46, 113, 228),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
