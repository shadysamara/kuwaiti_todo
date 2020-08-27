import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:kuwaiti_flutter/ui/pages/home_page.dart';

void main() {
  runApp(ShadyClass());
}

class ShadyClass extends StatefulWidget {
  @override
  _ShadyClassState createState() => _ShadyClassState();
}

class _ShadyClassState extends State<ShadyClass> {
  Future<void> secureScreen() async {
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    secureScreen();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: HomePage());
  }
}
/*
class ShadyClass extends StatefulWidget {
  @override
  _ShadyClassState createState() => _ShadyClassState();
}

class _ShadyClassState extends State<ShadyClass>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: HomePage()

        // Scaffold(
        //     appBar: AppBar(
        //       title: Text('ShadyApp'),
        //       bottom: TabBar(
        //         controller: tabController,
        //         tabs: [
        //           Tab(text: 'All Tasks'),
        //           Tab(text: 'Completed Tasks'),
        //           Tab(text: 'UnCompleted Tasks'),
        //         ],
        //         onTap: (value) {
        //           print(value);
        //         },
        //         isScrollable: true,
        //       ),
        //     ),
        //     body: Column(
        //       children: <Widget>[
        //         Expanded(
        //           child: TabBarView(controller: tabController, children: [
        //             Center(
        //               child: Text('All Tasks'),
        //             ),
        //             Center(
        //               child: Text('Complete Tasks'),
        //             ),
        //             Center(
        //               child: Text('InComplete Tasks'),
        //             ),
        //           ]),
        //         ),
        //         RaisedButton(
        //           onPressed: () {
        //             tabController.animateTo(2);
        //           },
        //           child: Text('go to uncomplete Tasks'),
        //         )
        //       ],
        //     ))

        );
  }
}
*/
