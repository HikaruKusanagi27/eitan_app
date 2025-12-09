import 'package:flutter/material.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({super.key});

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}
bool isChecked = false;
class _SelectionPageState extends State<SelectionPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Checkbox(
             value: isChecked,
             onChanged: (bool? value) {
               setState(() {
                 isChecked = value!;
               });
             },
           ),

           Chip(label: Text(isChecked ? 'Checked' : 'Unchecked')), // チェック状態に応じて表示を変更
          ],
        ),
      ),
    );
  }
}