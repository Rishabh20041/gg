import 'package:flutter/material.dart';




class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Practice Set"),
      ),
      body: const Text("Homepage"),
      drawer: const Drawer(),
    );
  }
}