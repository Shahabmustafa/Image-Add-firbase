import 'package:cricket/Models/venue.dart';
import 'package:cricket/Utls/app_color.dart';
import 'package:flutter/material.dart';

class VenueWidget extends StatelessWidget {
  final Venue venue;
  const VenueWidget({Key? key,required this.venue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      margin: const EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        color: AppColors.pinkColor,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
          ),
        ]
      ),
      child: Column(
        children: [
          Container(
            height: 280.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0)
            ),
            child: Stack(
              children: [
                Positioned.fill(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset(venue.image,fit: BoxFit.cover,),
                    ),
                ),
                Positioned(
                  left: (MediaQuery.of(context).size.width)/ 2 - 95,
                    child: Container(
                      alignment: Alignment.center,
                      width: 150.0,
                      height: 30.0,
                      decoration: const BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0)),
                      ),
                      child: Text(venue.country,style: const TextStyle(color: Colors.white),),
                    ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(venue.stadium,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
          SizedBox(
            height: 10.0,
          ),
          Text(venue.city,style: TextStyle(color: Colors.white,fontSize: 15),),
        ],
      ),
    );
  }
}
