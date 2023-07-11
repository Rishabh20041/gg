import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home_page.dart';
import 'package:flutter_application_1/Login_page.dart';


void main(List<String> args) {
 runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     newMethod;
     Myroute;
    return  MaterialApp(
      
    
      themeMode: ThemeMode.light,
      theme: ThemeData( appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
        
        primarySwatch: Colors.blue),
      
       
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
       "/":(context) => const LoginPage(),
       Myroute.homeRoute:(context) => const HomePage(),
       newMethod.loginRoute:(context) => const LoginPage(),
      }
    );
  }
}