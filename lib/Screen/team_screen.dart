import 'package:flutter/material.dart';

import '../Widget/custom_appbar.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        titleText: "History",
      ),
    );
  }
}
