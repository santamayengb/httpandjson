import 'package:json_annotation/json_annotation.dart';

part 'model_serializable.g.dart';

@JsonSerializable()
class TodoModel {
  int userId;
  String title;

  TodoModel({
    required this.userId,
    required this.title,
  });

  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);

  Map<String, dynamic> toJson() => _$TodoModelToJson(this);
}
