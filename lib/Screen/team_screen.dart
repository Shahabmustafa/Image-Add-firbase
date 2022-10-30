import 'package:cricket/Models/team.dart';
import 'package:cricket/Utls/data_api.dart';
import 'package:cricket/Widget/backgroung_widget.dart';
import 'package:cricket/Widget/team_widget.dart';
import 'package:flutter/material.dart';

import '../Widget/custom_appbar.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        titleText: "Team",
      ),
      body: BackgroundWidget(
        padding: EdgeInsets.all(10.0),
        child: FutureBuilder(
          future: DataApi.getAllTeam(context),
      builder: (BuildContext context,AsyncSnapshot snapshot){
            if(snapshot.hasData){
              List<Team> teams = snapshot.data;
              return ListView.builder(
                itemCount: teams.length,
                  itemBuilder: (context,index){
                  return teamWidget(team: teams[index]);
                  });
            }else{
              return Center(child: CircularProgressIndicator());
            }
      },
      ),),
    );
  }
}
