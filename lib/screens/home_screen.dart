import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/study1.jpg'),
          const SizedBox(
            height: 10,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.change_circle),
          )
        ],
      ),
    );
  }
}
