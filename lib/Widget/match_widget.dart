import 'package:cricket/Utls/app_color.dart';
import 'package:cricket/Utls/helper.dart';
import 'package:flutter/material.dart';
import 'package:cricket/Models/match.dart';

class MatchWidget extends StatelessWidget {
  final Match match;
  const MatchWidget({Key? key,required this.match}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      margin: EdgeInsets.only(bottom: 15.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: const BoxDecoration(
                      color: AppColors.lightPurpleColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20)
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                           RoundFlag(flag: match.flagOne),
                            const SizedBox(width: 5,),
                            Text(match.teamOne,style: const TextStyle(color: Colors.white),)
                          ],
                        ),
                        const SizedBox(
                          width: 35.0,
                            height: 25.0,
                            child: Center(child: Text('VS',style: TextStyle(color: Colors.white),)),
                        ),
                        Row(
                          children: [
                            RoundFlag(flag: match.flagTwo),
                            SizedBox(width: 5,),
                            Text(match.teamTwo,style: const TextStyle(color: Colors.white),)
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 18.0),
                  decoration: const BoxDecoration(
                    color: AppColors.pinkColor,
                    borderRadius: BorderRadius.only(
                     bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(Helper.getDate(match.date),style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 15.0),),
                      Text(Helper.getGMTTime(match.date),style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white),),
                      Text(Helper.getLocalTime(match.date),style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white),),
                      Text(match.venue,style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white),),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Image.asset('assets/images/player_icon.png',width: 50.0,height: 50.0,),
        ],
      ),
    );
  }
}

class RoundFlag extends StatelessWidget {
  final String flag;
  const RoundFlag({Key? key,required this.flag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 2)
      ),
      child: ClipOval(child: Image.asset('assets/flags/$flag',fit: BoxFit.fill,)),
    );
  }
}
