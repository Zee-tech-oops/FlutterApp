import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                ".dart_tool/assets/images/login_image.png",
                fit: BoxFit.cover,
              ),

              const SizedBox(
                height: 20.0,
              ),

              const Text(
                "Hello Zeeshan",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),

              const SizedBox(
                height: 24.0,
              ),

              Padding(
                // padding: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.symmetric(
                    vertical: 12.0, horizontal: 26.0),

                child: Column(children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter UserName:",
                      labelText: "Username",
                    ),
                  ),

                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ),

                  const SizedBox(
                    height: 20.0,
                  ),

                  ElevatedButton(
                    style: TextButton.styleFrom(minimumSize: const Size(120, 40)),

                    onPressed: () {
                      Navigator.pushNamed(context, MyRouts.homeRout);
                    },

                    child: const Text("Login"),

                  )
                ]),
              )
            ],
          ),
        ));
  }
}
