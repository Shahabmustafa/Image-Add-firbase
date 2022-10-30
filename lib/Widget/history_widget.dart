import 'package:cricket/Models/history.dart';
import 'package:cricket/Utls/app_color.dart';
import 'package:flutter/material.dart';

class HistoryWidget extends StatelessWidget {
  final History history;
  const HistoryWidget({Key? key,required this.history}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            countryWidget(country: history.winner, countryFlag: history.winnerFlag),
            const CircleAvatar(
              radius: 30.0,
              backgroundColor: AppColors.pinkColor,
              child: Text('VS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            ),
            countryWidget(country: history.runnerUp, countryFlag: history.runnerUpFlag),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(history.winnerScore,style: TextStyle(color: AppColors.primaryColor, fontWeight: FontWeight.bold),),
            Text(history.runnerUpScore,style: TextStyle(color: AppColors.primaryColor, fontWeight: FontWeight.bold),),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(history.winnerCaptain,width: 100.0,height: 150.0,fit: BoxFit.cover,),
            Column(
              children: [
                Text(history.year,style: TextStyle(color: AppColors.primaryColor,fontWeight: FontWeight.bold),),
                Image.asset('assets/images/trophy.png',height: 100.0,width: 70.0,),
                Text('Hosted by',style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.primaryColor),),
                Text(history.host,style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.primaryColor),)
              ],
            ),
            Image.asset(history.runnerUpCaptain,width: 100.0,height: 150.0,fit: BoxFit.cover,),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}

class countryWidget extends StatelessWidget {
  final String country;
  final String countryFlag;
  const countryWidget({Key? key,required this.country,required this.countryFlag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: const LinearGradient(
              colors: [
                AppColors.pinkColor,
                AppColors.lightPurpleColor,
              ]
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/flags/$countryFlag'),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(country,style: TextStyle(color: Colors.white),)
          ],
        ),
      ),
    );
  }
}

