// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/routes.dart';

class LoginPage extends StatefulWidget 
{
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> 
{
  String name = "";
  bool changeButton = false;
  
  get duration => null;

  @override
  Widget build(BuildContext context) 
  {
    return Material
    (
      color: Colors.white,

      child: SingleChildScrollView
      (

        child: Column
        (

          children: 
          [

            Image.asset
            (
              ".dart_tool/assets/images/login_image.png", width: 400, height: 400, //fit: BoxFit.cover
            ),

            // const SizedBox //Use as Empty Space box
            // ( 
            //   height: 20.0,
            // ),

            Text
            (
              "Hello $name", style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox
            (
              height: 24.0,
            ),

            Padding
            (
              // padding: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.symmetric
              (
                vertical: 12.0, horizontal: 26.0
              ),

              child: Column(
                
                children: 
                [
                  //for Text-BOX
                  TextFormField
                  (
                    decoration: const InputDecoration
                    (
                      hintText: "Enter UserName:",
                      labelText: "Username",
                    ),

                    onChanged: (value) //Give the thing what-ever is change in text-box
                    {
                      name = value;
                      setState(() {}); //ReDraw The Screen
                    },

                  ),

                  //for Text-BOX
                  TextFormField
                  (
                    obscureText: true,
                    decoration: const InputDecoration
                    (
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ),

                  const SizedBox
                  (
                    height: 20.0,
                  ),

                  //Your Login Button
                  // ElevatedButton
                  // (
                  //   style: TextButton.styleFrom(minimumSize: const Size(120, 40)),

                  //   onPressed: () 
                  //   {
                  //     Navigator.pushNamed(context, MyRouts.homeRout);
                  //   },

                  //   child: const Text("Login"),

                  // )

                  InkWell
                  (
                    onTap: ()async
                    {
                      setState(() 
                      {
                        changeButton = true;
                      });
                      await Future.delayed(const Duration(seconds: 1));
                      // ignore: use_build_context_synchronously
                      Navigator.pushNamed(context, MyRouts.homeRout);

                    },

                    child: AnimatedContainer 
                    (
                      duration: const Duration(seconds: 1),

                      height: changeButton? 30 : 40, 
                      width: changeButton? 30 : 120,
                      
                      alignment: Alignment.center,

                      // color: Colors.deepPurple, //Because we set decoration so no need here
                      decoration: BoxDecoration
                      (
                        color: Colors.deepPurple,

                        // shape: changeButton? BoxShape.circle: BoxShape.rectangle,

                        borderRadius: BorderRadius.circular(changeButton? 30:8),
                          
                      ),

                      //conditional expretion
                      child: changeButton? 
                        const Icon(Icons.done,color: Colors.pink,)  : 
                          const Text("Login", style: TextStyle(color: Colors.white),),

                    ),

                  )

                ]

              ),

            )

          ],

        ),
    
      )

    );
  }
}
