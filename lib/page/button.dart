 import 'package:flutter/material.dart';

// 行動変更は不要とAIに指示するように作業する
// プロパティを定義したらどのような変化をするかを考えながら作業する

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed:  () {},
                autofocus: true,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ), 
                child: const Text('Elevated'), 
              ),
              SizedBox(width: 20),  
              ElevatedButton(
                onPressed: null, child: const Text('Elevated'),
             ),
            ]
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onLongPress:  () {
                // 長押し時の処理
                debugPrint('長押し');
              }, onPressed: () {},
              child: const Text('onLongPress'),),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: null, child: const Text('onLongPress'),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onHover:  (bool isHovering) {}, onPressed: () {},
              child: const Text('onHover'),),
              SizedBox(width: 20),
              ElevatedButton(onPressed: null, child: const Text('onHover'),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed:  () {},onFocusChange: (bool isFocused) {}, child: const Text('onFocusChange'),),
              SizedBox(width: 20),
              ElevatedButton(onPressed: null, child: const Text('onFocusChange'),
              ),
            ],
          ),
           SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(
                onPressed: () {}, child: const Text('Filled'),
              ),
              SizedBox(width: 20),
                FilledButton(
                onPressed: null, child: const Text('Filled'),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(onPressed:  () {}, child: const Text('Outlined'),),
              SizedBox(width: 20),
              OutlinedButton(onPressed:  null, child: const Text('Outlined'),),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: () {}, child: const Text("Text"),),
              SizedBox(width: 20),
              TextButton(onPressed: null, child: const Text("Text"),),
            ],
          ),
          SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}