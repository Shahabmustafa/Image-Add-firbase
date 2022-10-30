import 'package:cricket/Utls/app_color.dart';
import 'package:flutter/material.dart';

import '../Models/team.dart';

class teamWidget extends StatelessWidget {
  final Team team;
  const teamWidget({Key? key,required this.team}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 120,
      margin: EdgeInsets.only(bottom: 20.0),
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: LinearGradient(
            colors: [
              AppColors.pinkColor,
              AppColors.primaryColor,
            ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(team.flag,width: 100.0,height: 80.0,fit: BoxFit.cover,)
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(team.fullName,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),),
                  Text(team.captain,style: TextStyle(color: Colors.white),)
                ],
              ),
            ],
          ),
          CircleAvatar(
            radius: 40.0,
            backgroundImage: AssetImage(team.captainImage),
          ),
        ],
      ),
    );
  }
}