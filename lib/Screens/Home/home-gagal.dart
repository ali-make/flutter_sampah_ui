import 'package:flutter/material.dart';
import 'package:sampah_project/foldable_sidebar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late FSBStatus drawerStatus;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FoldableSidebarBuilder(
          drawerBackgroundColor: Colors.greenAccent,
          drawer: MenuBar(closeDrawer: () {
            setState(() {
              drawerStatus = FSBStatus.FSB_CLOSE;
            });
          }),
          screenContents: Home(),
          status: drawerStatus,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey,
          child: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {
            setState(() {
              drawerStatus = drawerStatus == FSBStatus.FSB_OPEN
                  ? FSBStatus.FSB_CLOSE
                  : FSBStatus.FSB_OPEN;
            });
          },
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Center(
        child: Text(
          "Home Screen",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class MenuBar extends StatelessWidget {
  final Function closeDrawer;
  const MenuBar({
    Key? key,
    required this.closeDrawer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Container(
      color: Colors.green[50],
      width: mediaQuery.size.width * 0.60,
      height: mediaQuery.size.height,
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.green.withAlpha(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlutterLogo(
                  size: 100,
                ),
                SizedBox(
                  height: 10,
                ),
                Text("SAMPAH")
              ],
            ),
          )
        ],
      ),
    );
  }
}
