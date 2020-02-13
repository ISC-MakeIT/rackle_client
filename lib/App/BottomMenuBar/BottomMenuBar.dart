import 'package:flutter/material.dart';
import 'package:rackle_client/App/BottomMenuBar/TabItem.dart';

const tabTitle = <TabItem, String>{
  TabItem.map: 'マップ',
  TabItem.pinsummary: 'ピン一覧',
  TabItem.notifications: 'お知らせ',
  TabItem.configurarion: '設定',
};
const tabIcon = <TabItem, IconData>{
  TabItem.map: Icons.map,
  TabItem.pinsummary: Icons.pin_drop,
  TabItem.notifications: Icons.notifications,
  TabItem.configurarion: Icons.settings,
};

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key key,
    this.currentTab,
    this.onSelect,
  }) : super(key: key);

  final TabItem currentTab;
  final ValueChanged<TabItem> onSelect;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        bottomItem(
          context,
          tabItem: TabItem.map,
        ),
        bottomItem(
          context,
          tabItem: TabItem.pinsummary,
        ),
        bottomItem(
          context,
          tabItem: TabItem.notifications,
        ),
        bottomItem(
          context,
          tabItem: TabItem.configurarion,
        ),
      ],
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        onSelect(TabItem.values[index]);
      },
    );
  }

  BottomNavigationBarItem bottomItem(
    BuildContext context, {
    TabItem tabItem,
  }) {
    final color = currentTab == tabItem ? Colors.blue : Colors.black26;
    return BottomNavigationBarItem(
      icon: Icon(
        tabIcon[tabItem],
        color: color,
      ),
      title: Text(
        tabTitle[tabItem],
        style: TextStyle(
          color: color,
        ),
      ),
    );
  }
}
