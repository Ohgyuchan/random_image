import 'package:flutter/material.dart';

class DefaultPickScreen extends StatelessWidget {
  const DefaultPickScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(16.0),
      childAspectRatio: 8.0 / 9.0,
      children: [
        Card(
          child: Image.asset('assets/study1.jpg'),
        )
      ],
    );
  }
}
