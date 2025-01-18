class InformationModel {
  final int userId;
  final int id;
  final String title;
  final String body;

  InformationModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });
  factory InformationModel.fromJson(Map<String, dynamic> json) {
    return InformationModel(
      userId: json["userId"],
      id: json["id"],
      title: json["title"],
      body: json["body"],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      "userId": userId,
      "id": id,
      "title": title,
      "body": body,
    };
  }
}
