import 'package:cricket/Widget/custom_appbar.dart';
import 'package:flutter/material.dart';

class LiveScreen extends StatelessWidget {
  const LiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        titleText: 'Live',
      ),
    );
  }
}
