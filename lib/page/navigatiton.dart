import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {

  int currentPageIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavigationDrawer( // 右側のナビゲーションドロワー
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Navigation Drawer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              // Action when Home is tapped
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              // Action when Settings is tapped
            },
          ),
        ],
      ), // 右側のナビゲーションドロワー
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
       bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index; // 選択されたインデックスを更新
          });
        },
      indicatorColor: Colors.amber, // インジケーターの色を設定
      selectedIndex: currentPageIndex, // 選択されたインデックスを設定
      destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          NavigationDestination(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),
    );
  }
} 