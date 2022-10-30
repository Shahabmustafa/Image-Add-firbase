class Match{
  late String date;
  late String teamOne;
  late String teamTwo;
  late String flagOne;
  late String flagTwo;
  late String group;
  late String venue;
  late String time;

  Match({
    required this.date,
    required this.teamOne,
    required this.teamTwo,
    required this.flagOne,
    required this.flagTwo,
    required this.group,
    required this.venue,
    required this.time,
  });
  factory Match.fromJSON(Map<String,dynamic>map){
    return Match(
        date: map['date'],
        teamOne: map['teamOne'],
        teamTwo: map['teamTwo'],
        flagOne: map['flagOne'],
        flagTwo: map['flagTwo'],
        group: map['group'],
        venue: map['venue'],
        time: map['time'],
    );
  }
}

