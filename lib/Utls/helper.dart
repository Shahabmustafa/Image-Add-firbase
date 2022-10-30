import 'package:intl/intl.dart';

class Helper{

  static String getDate(String gmt){

    List<String> list = gmt.split(' ');

    return list[0].replaceAll('_', '');
  }

  static String getGMTTime(String gmt){
    List<String>list = gmt.split(' ');
    return '${list[1]} ${list[2]} GMT';
  }

  static String getLocalTime(String gmt){
    DateFormat dateFormat = DateFormat('dd-MMM-yyyy hh:mm a');
    DateTime dt = dateFormat.parse(gmt,true);
    DateTime localDt = dt.toLocal();
    String time = DateFormat('hh:mm a').format(localDt);
    return '$time Local';
  }
}
