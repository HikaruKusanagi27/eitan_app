 import 'package:flutter/material.dart';

// 行動変更は不要とAIに指示するように作業する
// プロパティを定義したらどのような変化をするかを考えながら作業する

enum Calendar {day, week, month, year}
class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              IconButton(
            icon: const Icon(Icons.volume_up),
            onPressed: () {},
          ),
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
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.amber)), child: const Text("Text"),
                  ),
                SizedBox(width: 20),
                TextButton(onPressed: null, child: const Text("Text"),),
              ],
            ),
            SizedBox(height: 20),
            SingleChoice(),
            ],
          ),
        ),
      ],
    ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 20),
          FloatingActionButton.extended(
            onPressed: () {},
            tooltip: '追加',
            foregroundColor: Colors.white,
            backgroundColor: Colors.orange,
            focusColor: Colors.green,
            splashColor: Colors.blue,
            icon: Icon(Icons.add),
            label: Text('追加'),
          ),
          SizedBox(height: 20),
          FloatingActionButton.small(
            onPressed: () {},
            tooltip: '追加',
            foregroundColor: Colors.red,
            backgroundColor: Colors.yellow,
            focusColor: Colors.green,
            splashColor: Colors.blue,
            child: Icon(Icons.add),
          ),
          SizedBox(height: 20),
          FloatingActionButton(
            onPressed: () {},
            tooltip: '追加',
            foregroundColor: Colors.red,
            backgroundColor: Colors.yellow,
            focusColor: Colors.green,
            splashColor: Colors.blue,
            child: Icon(Icons.add),
          ),
          SizedBox(height: 20),
            FloatingActionButton.large(
            onPressed: () {},
            tooltip: '追加',
            foregroundColor: Colors.red,
            backgroundColor: Colors.yellow,
            focusColor: Colors.green,
            splashColor: Colors.blue,
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}


class SingleChoice extends StatefulWidget {
  const SingleChoice({super.key});

  @override
  State<SingleChoice> createState() => _SingleChoiceState();
}

class _SingleChoiceState extends State<SingleChoice> {
  Calendar calendarView = Calendar.day;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Calendar>(
      segments: const <ButtonSegment<Calendar>>[
        ButtonSegment<Calendar>(
          value: Calendar.day,
          label: Text('Day'),
          icon: Icon(Icons.calendar_view_day),
        ),
        ButtonSegment<Calendar>(
          value: Calendar.week,
          label: Text('Week'),
          icon: Icon(Icons.calendar_view_week),
        ),
        ButtonSegment<Calendar>(
          value: Calendar.month,
          label: Text('Month'),
          icon: Icon(Icons.calendar_view_month),
        ),
        ButtonSegment<Calendar>(
          value: Calendar.year,
          label: Text('Year'),
          icon: Icon(Icons.calendar_today),
        ),
      ],
      selected: <Calendar>{calendarView},
      onSelectionChanged: (Set<Calendar> newSelection) {
        setState(() {
          calendarView = newSelection.first;
        });
      },
    );
  }
}