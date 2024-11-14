import 'package:block_cubit/next_page.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NextPage(),
                  ));
            },
            child: const Hero(
                transitionOnUserGestures: true,
                tag: 'button',
                child: Text('Enter'))),
      ),
    );
  }
}
