import 'package:flutter/material.dart';

class ContainmentPage extends StatelessWidget {
  const ContainmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  enableDrag: true,
                  isScrollControlled: true, // 画面全体を覆うはずが表示されない
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      color: Colors.blue[200],
                      child: const Center(child: Text("表示されました")),
                    );
                  },
                );
              },
              child: Text('BottomSheet Button'),
            ),
            Card(
              borderOnForeground: true,
              color: Colors.deepOrange,
              surfaceTintColor: Colors.black,
              semanticContainer: false, 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Container(
                width: 300,
                height: 150,
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Card Widget',
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 12, // 線の太さ
              indent: 150, // 線の開始位置からの余白
              endIndent: 150, // 線の終了位置からの余白
              radius: BorderRadius.circular(20), // 角の丸み       
            ),
            ListTile(
              tileColor: Colors.lightBlue, // 背景色
              leading: Icon(Icons.account_circle, size: 50), // 先頭のアイコン
              title: Text('ListTile Title'), // タイトル
              subtitle: Text('ListTile Subtitle'), // サブタイトル
              trailing: Icon(Icons.arrow_forward_ios), // 末尾のアイコン
            )
          ],
        ),
      ),
    );
  }
}
