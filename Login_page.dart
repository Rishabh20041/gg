import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/My_Routes.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Column(children: [
          Image.asset(
            "assets/Images/login_page.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 0),
          Text("Welcome $name",
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Username",
                    hintText: "Enter Username",
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Password",
                    hintText: "Enter Password",
                  ),
                  obscureText: true,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            
            onTap: (){
              setState(() {
                changeButton = true;
              });
              
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
          
           child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            height: 50,
            width: changeButton? 50:150,
            alignment: Alignment.center,
            child: Text("Login",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.purple
            ),
           )
          )
        ]));
  }
}

