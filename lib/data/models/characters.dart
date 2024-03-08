class Character {
  late int charId;
  late String name;
  late String nickName; // late means i will back to عشان اعرف المتغير دا
  late String image;
  late List<dynamic> jobs;
  late String statusIfDeadOrAlive;
  late List<dynamic> appearanceOfSeason;
  late String actorName;
  late String categoryForTwoSeries;
  late List<dynamic> betterCallSaulAppearance;
  Character.fromJson(Map<String, dynamic> json) {
    charId = json['char_id']; //['دا بجيبو من البوست مان'] ...json to dart ..search in google
    name = json['name'];
    nickName = json['nickame'];
    image = json['img'];
    jobs = json['occupation'];
    statusIfDeadOrAlive = json['status'];
    appearanceOfSeason = json['appearance'];
    actorName = json['portrayed'];
    categoryForTwoSeries = json['category'];
    betterCallSaulAppearance = json['better_call_saul_appearance'];
  }
}
