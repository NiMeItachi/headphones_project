import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            color: Colors.red,
            backgroundBlendMode: BlendMode.multiply
          ),
          child: IconButton(
            splashRadius: 100,
            splashColor: Colors.green.withOpacity(0.5),
            onPressed: () {},
            icon: const Icon(Icons.favorite),

          ),
        ),
      ),
    );
  }
}
