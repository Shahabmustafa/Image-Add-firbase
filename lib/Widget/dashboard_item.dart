import 'package:flutter/material.dart';

class DashboardItem extends StatelessWidget {
  String imagePath;
  String textTitle;
  VoidCallback onTap;
   DashboardItem({required this.onTap,required this.imagePath,required this.textTitle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomRight: Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(imagePath,width: 100.0,height: 100.0,),
               Text(textTitle,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),),
            ],
          ),
        ),
      ),
    );
  }
}
