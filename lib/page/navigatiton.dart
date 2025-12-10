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
    return DefaultTabController(
      length: 3, // タブの数
      initialIndex: 1, // 最初に表示するタブのインデックス
      child: Scaffold(
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
            // NavigationRailの実装の仕方が分からないため、一旦コメントアウトします。
            // NavigationRail(destinations: const [
            //   NavigationRailDestination(
            //     icon: Icon(Icons.home),
            //     label: Text('Home'),
            //   ),
            //   NavigationRailDestination(
            //     icon: Icon(Icons.settings),
            //     label: Text('Settings'),
            //   ),
            // ], selectedIndex: currentPageIndex, onDestinationSelected: (int index) {
            //   setState(() {
            //     currentPageIndex = index;
            //   });
            // },),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
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
          bottom: TabBar(
            indicatorColor: Colors.amber, // インジケーターの色を設定
            tabs: <Widget>[
              Tab(icon: Icon(Icons.cloud_outlined)),
              Tab(icon: Icon(Icons.beach_access_sharp)),
              Tab(icon: Icon(Icons.brightness_5_sharp)),
            ],
          ),
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
      ),
    );
  }
} 