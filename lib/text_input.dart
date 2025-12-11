import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  const   TextInput({super.key});

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Input'),
      ),
      body: Center(
        child: Text('This is the Text Input Page'),
      ),
    ) ;
  }
}