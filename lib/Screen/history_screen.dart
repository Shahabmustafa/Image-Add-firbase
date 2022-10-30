import 'package:cricket/Models/history.dart';
import 'package:cricket/Utls/data_api.dart';
import 'package:cricket/Widget/backgroung_widget.dart';
import 'package:cricket/Widget/custom_appbar.dart';
import 'package:cricket/Widget/history_widget.dart';
import 'package:flutter/material.dart';


class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        titleText: "History",
      ),
      body: BackgroundWidget(
        padding: EdgeInsets.all(10),
        child: FutureBuilder<List<History>>(
          future: DataApi.getAllHistory(context),
          builder: (BuildContext context,AsyncSnapshot snapshot){
            if(snapshot.hasData){
              List<History> historyList = snapshot.data;
              return ListView.builder(
                  itemCount: historyList.length,
                  itemBuilder: (context,index){
                return HistoryWidget(
                    history: historyList[index],
                );
              }
              );
            }else{
              return Center(
                  child: CircularProgressIndicator()
              );
            }
          }
        ),
      ),
    );
  }
}
