import 'package:flutter/material.dart';

class CommunicationPage extends StatelessWidget {
  const CommunicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Communication Page')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Badge Page')),
          LinearProgressIndicator(
            value: 0.7,
            backgroundColor: Colors.grey[300],
          ),
          SizedBox(height: 20),
          IconButton(
            icon: Badge.count(
              textColor: Colors.black,
              backgroundColor: Colors.orange,
              count: 9999,
              child: Icon(Icons.notifications, size: 70),
            ),
            onPressed: () {},
          ),
          ElevatedButton(
            onPressed: () {
              SnackBar snackBar = SnackBar(
                content: Text('SnackBarが表示されました！'),
                duration: Duration(seconds: 2),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text('SnackBar'),
          ),
          TextButton(
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                icon: Icon(Icons.warning, color: Colors.red),
                iconColor: Colors.blue, // 何処のiconの色なのか理解できていない
                title: const Text('タイトル'),
                content: const Text('内容'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
            child: const Text('Show Dialog'),
          ),
        ],
      ),
    );
  }
}

/// Flutter code sample for [LinearProgressIndicator].

void main() => runApp(const ProgressIndicatorExampleApp());

class ProgressIndicatorExampleApp extends StatelessWidget {
  const ProgressIndicatorExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ProgressIndicatorExample());
  }
}

class ProgressIndicatorExample extends StatefulWidget {
  const ProgressIndicatorExample({super.key});

  @override
  State<ProgressIndicatorExample> createState() =>
      _ProgressIndicatorExampleState();
}

class _ProgressIndicatorExampleState extends State<ProgressIndicatorExample>
    with TickerProviderStateMixin {
  late AnimationController controller;
  bool determinate = false;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(
            /// [AnimationController]s can be created with `vsync: this` because of
            /// [TickerProviderStateMixin].
            vsync: this,
            duration: const Duration(seconds: 2),
          )
          ..addListener(() {
            setState(() {});
          })
          ..repeat(reverse: true);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          spacing: 16.0,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Linear progress indicator',
              style: TextStyle(fontSize: 20),
            ),
            LinearProgressIndicator(
              value: determinate ? controller.value : null,
              semanticsLabel: 'Linear progress indicator',
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    '${determinate ? 'Determinate' : 'Indeterminate'} Mode',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                Switch(
                  value: determinate,
                  onChanged: (bool value) {
                    setState(() {
                      determinate = value;
                      if (determinate) {
                        controller.stop();
                      } else {
                        controller
                          ..forward(from: controller.value)
                          ..repeat();
                      }
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
