import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String supTitle;
  @HiveField(2)
  final String data;
  @HiveField(3)
  final int color;

  NoteModel({
    required this.data,
    required this.title,
    required this.supTitle,
    required this.color,
  });
}
