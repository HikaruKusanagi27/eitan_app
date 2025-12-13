import 'package:flutter/material.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ), // ← これがないと自動で戻るボタンが出ない
        title: Text('Navigation Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              // Action when info button is pressed
            },
          ),
        ], // 右側のアクションボタン
        flexibleSpace: Container( // AppBarの背景をカスタマイズ
          decoration: BoxDecoration( // グラデーション背景
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.deepPurpleAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ), // グラデーション背景
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20.0), // 高さを指定
          child: Container(
            color: Colors.blueAccent,
            height: 4.0,
          ),
        ), // 下部のカスタムウィジェット
      ),
      body: Center(
        child: Text('Navigation Page'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered, // 横向きレイアウトの設定
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 0, // 選択されているインデックス
        selectedItemColor: Colors.red, // 選択されたアイテムの色
        unselectedItemColor: Colors.grey, // 選択されていないアイテムの色
        onTap: (index) {
        },
      ),
    );
  }
} 