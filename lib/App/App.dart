part of 'SplashImage.dart';

class App extends StatefulWidget {
  final Widget pageOfIndex0;
  final Widget pageOfIndex1;
  final Widget pageOfIndex2;
  final Widget pageOfIndex3;

  App({
    Key key,
    @required this.pageOfIndex0,
    @required this.pageOfIndex1,
    @required this.pageOfIndex2,
    @required this.pageOfIndex3,
  }) : super(key: key);

  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  int _menuIndex = 0;
  List<Widget> _pages = [];

  void changeIndexHundler(index) {
    setState(() {
      _menuIndex = index;
    });
  }

  @override
  void initState() {
    print(_pages);
    print(widget.pageOfIndex0);
    _pages
      ..add(widget.pageOfIndex0)
      ..add(widget.pageOfIndex1)
      ..add(widget.pageOfIndex2)
      ..add(widget.pageOfIndex3);

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_menuIndex],
      bottomNavigationBar: BottomMenuBar(
        menuIndex: _menuIndex,
        indexHundler: changeIndexHundler,
      ),
    );
  }
}
