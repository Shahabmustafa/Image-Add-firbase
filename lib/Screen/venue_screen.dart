import 'package:flutter/material.dart';

import '../Widget/custom_appbar.dart';


class VenueScreen extends StatelessWidget {
  const VenueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        titleText: "History",
      ),
    );
  }
}
