import 'package:cricket/Screen/history_screen.dart';
import 'package:cricket/Screen/live_screen.dart';
import 'package:cricket/Screen/schedule_screen.dart';
import 'package:cricket/Screen/team_screen.dart';
import 'package:cricket/Screen/venue_screen.dart';
import 'package:cricket/Widget/backgroung_widget.dart';
import 'package:cricket/Widget/dashboard_item.dart';
import 'package:flutter/material.dart';
import '../Widget/custom_appbar.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        titleText: 'T20 World Cup',
      ),
      body: BackgroundWidget(
      padding: const EdgeInsets.all(20),
      child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
          ),
        children: [
          DashboardItem(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_){
                  return const ScheduleScreen();
                }));
              },
              imagePath: 'assets/dashboard/schedule.png',
              textTitle: 'Schedules',
          ),
          DashboardItem(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_){
                return const VenueScreen();
              }));
            },
            imagePath: 'assets/dashboard/venues.png',
            textTitle: 'Venues',
          ),
          DashboardItem(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_){
                return const HistoryScreen();
              }));
            },
            imagePath: 'assets/dashboard/history.png',
            textTitle: 'History',
          ),
          DashboardItem(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_){
                return const TeamScreen();
              }));
            },
            imagePath: 'assets/dashboard/teams.png',
            textTitle: 'Teams',
          ),
          DashboardItem(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_){
                return LiveScreen();
              }));
            },
            imagePath: 'assets/dashboard/live_score.png',
            textTitle: 'Live Scores',
          ),
          DashboardItem(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_){
                return const HistoryScreen();
              }));
            },
            imagePath: 'assets/dashboard/highlights.png',
            textTitle: 'HighLights',
          ),
        ],
      ),
      ),
    );
  }
}
