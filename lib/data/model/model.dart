import 'package:hive_flutter/hive_flutter.dart';

part 'model.g.dart';

@HiveType(typeId: 1)
class StudentMod {
  @HiveField(0)
  int? id;
  @HiveField(1)
  final String name;

  @HiveField(2)
  final String age;
  @HiveField(3)
  final String clas;

  @HiveField(4)
  final String result;
  @HiveField(5)
  final String? image;
  StudentMod({
    required this.name,
    required this.age,
    required this.result,
    required this.clas,
    this.id,
    this.image,
  });
}
