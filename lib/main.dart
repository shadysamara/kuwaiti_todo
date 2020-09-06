import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:kuwaiti_flutter/admobServices.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: ShadyClass(),
    );
  }
}

class ShadyClass extends StatefulWidget {
  @override
  _ShadyClassState createState() => _ShadyClassState();
}

class _ShadyClassState extends State<ShadyClass> {
  @override
  void initState() {
    super.initState();
    Admob.initialize(AdManager.appId);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            width: double.infinity,
            height: 100,
            color: Colors.red,
          ),
        ),
        AdmobBanner(
            adUnitId: AdManager.bannerAdUnitId,
            adSize: AdmobBannerSize.FULL_BANNER)
      ],
    );
  }
}
