class History{
  late String winner;
  late String runnerUp;
  late String winnerFlag;
  late String runnerUpFlag;
  late String winnerCaptain;
  late String runnerUpCaptain;
  late String winnerScore;
  late String runnerUpScore;
  late String host;
  late String year;

  History({
    required this.winner,
    required this.runnerUp,
    required this.winnerFlag,
    required this.runnerUpFlag,
    required this.winnerCaptain,
    required this.runnerUpCaptain,
    required this.runnerUpScore,
    required this.winnerScore,
    required this.host,
    required this.year,
});
  factory History.formJSON(Map<String,dynamic>map){
    return History(
        winner: map['winner'],
        runnerUp: map['runnerUp'],
        winnerFlag: map['winnerFlag'],
        runnerUpFlag: map['runnerUpFlag'],
        winnerCaptain: map['winnerCaptain'],
        runnerUpCaptain: map['runnerUpCaptain'],
        runnerUpScore: map['runnerUpScore'],
        winnerScore: map['winnerScore'],
        host: map['host'],
        year: map['year']
    );
  }

}