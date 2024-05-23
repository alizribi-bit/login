import 'package:flutter/material.dart';

import 'Widget.dart';
import 'login.dart';

class Sign extends StatefulWidget {
  const Sign({super.key});

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  TextEditingController nameController = TextEditingController();

  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
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
                Text("Sign Up",
                    style: Theme.of(context).textTheme.displayLarge),
                const SizedBox(
                  height: 30,
                ),
                textFormFieldWidget(context, nameController, TextInputType.text,
                    "User Name", Icons.person, false),
                const SizedBox(
                  height: 20,
                ),
                textFormFieldWidget(context, loginController,
                    TextInputType.emailAddress, "Email", Icons.email, false),
                const SizedBox(
                  height: 20,
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
                button(
                  "S'inscrire",
                ),
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
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Avez-vous un compte?",
                        style: Theme.of(context).textTheme.bodyLarge),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: const Text(
                        "Connexion",
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
