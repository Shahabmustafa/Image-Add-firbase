import 'package:cricket/Utls/data_api.dart';
import 'package:cricket/Widget/backgroung_widget.dart';
import 'package:cricket/Widget/venue_widget.dart';
import 'package:flutter/material.dart';

import '../Models/venue.dart';
import '../Widget/custom_appbar.dart';


class VenueScreen extends StatelessWidget {
  const VenueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        titleText: "Venues",
      ),
      body: BackgroundWidget(
        padding: EdgeInsets.all(10),
        child: FutureBuilder(
          future: DataApi.getAllVenues(context),
            builder: (BuildContext context,AsyncSnapshot snapshot){
            if(snapshot.hasData){
              List<Venue> venues = snapshot.data;
              return ListView.builder(
                itemCount: venues.length,
                itemBuilder: (context,index){
                  return VenueWidget(
                      venue: venues[index],
                  );
                },
              );
            }else{
              return Center(child: CircularProgressIndicator());
            }
            }),
      ),
    );
  }
}
