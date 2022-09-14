import 'package:flutter/material.dart';

class AutoRoute extends StatelessWidget {
  const AutoRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Mode Auto",
              style: Theme.of(context).textTheme.headline1,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Identifant UQAC"),
                    autocorrect: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Mot de passe"),
                    obscureText: true,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 40),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(
                    content: Text("Bientôt Disponible ™ ")));
              },
              child: const Text("Connexion"),
            ),
          ],
        ),
      ),
    );
  }
}
