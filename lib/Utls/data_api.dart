import 'dart:convert';
import 'package:cricket/Models/venue.dart';
import 'package:flutter/material.dart';
import 'package:cricket/Models/match.dart';
import 'package:cricket/Models/history.dart';

import '../Models/team.dart';

class DataApi{
  static Future<List<Match>> getAllMatches(BuildContext context)async{
    var matches = <Match> [];

    var assetBundle = DefaultAssetBundle.of(context);
    var data = await assetBundle.loadString('assets/data/ttwenty.json');
    var jsonData = json.decode(data);
    var jsonSchedule = jsonData['schedule'];

    for(var jsonMatch in jsonSchedule){
      Match match = Match.fromJSON(jsonMatch);
      matches.add(match);
    }
    return matches;
  }

  static Future<List<Venue>> getAllVenues(BuildContext context)async{
    var venues = <Venue> [];
    var assetBundle = DefaultAssetBundle.of(context);
    var data = await assetBundle.loadString('assets/data/ttwenty.json');
    var jsonData = json.decode(data);
    var jsonVenues = jsonData['venues'];

    for(var jsonVenue in jsonVenues){
      Venue venue = Venue.fromJSON(jsonVenue);
      venues.add(venue);
    }
    return venues;
  }

  static Future<List<History>> getAllHistory(BuildContext context)async{
    var historyList = <History> [];
    var assetBundle = DefaultAssetBundle.of(context);
    var data = await assetBundle.loadString('assets/data/ttwenty.json');
    var jsonData = json.decode(data);
    var jsonHistory = jsonData['history'];

    for(var mapHistory in jsonHistory){
      History history = History.formJSON(mapHistory);
      historyList.add(history);
    }
    return historyList;
  }

  static Future<List<Team>> getAllTeam(BuildContext context)async{
    var teamList = <Team> [];
    var assetBundle = DefaultAssetBundle.of(context);
    var data = await assetBundle.loadString('assets/data/ttwenty.json');
    var jsonData = json.decode(data);
    var jsonTeam = jsonData['teams'];

    for(var mapTeam in jsonTeam){
      Team team = Team.fromJSON(mapTeam);
      teamList.add(team);
    }
    return teamList;
  }
}