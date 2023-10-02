import 'package:flutter/material.dart';

class UnknownRoute extends StatelessWidget {
  const UnknownRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Next Screen"),
      ),
      body: const Center(
        child: Text(
          "Unknown Route",
          style: TextStyle(color: Colors.red, fontSize: 30.0),
        ),
      ),
    );
  }
}
