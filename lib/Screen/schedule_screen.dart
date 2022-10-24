import 'package:cricket/Utls/data_api.dart';
import 'package:cricket/Widget/backgroung_widget.dart';
import 'package:cricket/Widget/match_widget.dart';
import 'package:flutter/material.dart';
import '../Widget/custom_appbar.dart';
import 'package:cricket/Models/match.dart';


class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        titleText: "Schedule",
      ),
      body: BackgroundWidget(
        padding: EdgeInsets.all(20.0),
          child: FutureBuilder<List<Match>>(
            future: DataApi.getAllMatches(context),
              builder: (BuildContext context,AsyncSnapshot snapshot){
              if(snapshot.hasData){
                List<Match> matches = snapshot.data;
                return ListView.builder(
                  itemCount: matches.length,
                    itemBuilder: (context,index){
                      return MatchWidget(
                          match: matches[index],
                      );
                    }
                );
              }else{
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              }
          ),
      ),
    );
  }
}
