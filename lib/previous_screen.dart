import 'package:flutter/material.dart';

class PreviousScreen extends StatelessWidget {
  const PreviousScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Previous Screen'),
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
