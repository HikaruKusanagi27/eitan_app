import 'package:entan_app/page/badge.dart';
import 'package:entan_app/page/button.dart';
import 'package:flutter/material.dart';

class RoutePage extends StatelessWidget {
  const RoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ButtonPage()));
              },
              child: Text('Button Page'),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const BadgePage()));
            }, child: Text('Badge Page')),
          ],
        ),
      ),
    );
  }
}
