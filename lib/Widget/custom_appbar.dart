import 'package:flutter/material.dart';

class customAppBar extends StatelessWidget implements PreferredSizeWidget{
  String titleText;
   customAppBar({required this.titleText});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titleText),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10)
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}