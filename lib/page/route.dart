import 'package:entan_app/page/communication.dart';
import 'package:entan_app/page/actions.dart';
import 'package:flutter/material.dart';

// 行動変更は不要とAIに指示するように作業する
// プロパティを定義したらどのような変化をするかを考えながら作業する
// プロパティを確認した際は型も確認するようにする
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
                    MaterialPageRoute(builder: (context) => const ActionsPage()));
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
