import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () => {
                // Go to the Home Screen
                Navigator.pop(context),
              },
              child: const Text(
                'Go to Home Screen',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
