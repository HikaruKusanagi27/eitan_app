import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  const TextInput({super.key});

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Word Registration'))),
      body: Column(
        children: [
          TextField(decoration: InputDecoration(labelText: 'input text')),
          TextField(decoration: InputDecoration(labelText: 'input text')),
          ElevatedButton(onPressed: () {}, child: Text('Registration')),
        ],
      ),
    );
  }
}
