import 'dart:convert';
List<ToDo> toDoFromJson(String str) => List<ToDo>.from(json.decode(str).map((x) => ToDo.fromJson(x)));

String toDoToJson(List<ToDo> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
class ToDo {
    ToDo({
        required this.userId,
        required this.id,
        required this.title,
        required this.completed,
    });

    int userId;
    int id;
    String title;
    bool completed;

    factory ToDo.fromJson(Map<String, dynamic> json) => ToDo(
        title: json["title"],
        completed: json["completed"],
        userId: json["userId"],
        id: json["id"],
    );
    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
    };
}