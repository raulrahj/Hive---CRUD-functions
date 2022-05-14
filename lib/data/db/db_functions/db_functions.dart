// import 'package:flutter/material.dart';
// import 'package:hive_flutter/hive_flutter.dart';

// import '../../model/model.dart';

// ValueNotifier<List<StudentMod>> studentListNotifier = ValueNotifier([]);

// Future<void> addStudent(StudentMod value) async {
//   final studentDB = await Hive.openBox<StudentMod>('db_student');
//   final _id = await studentDB.add(value);
//   value.id = _id;
//   getAllStudents();
//   // studentListNotifier.value.add(value);
//   // studentListNotifier.notifyListeners();
// }

// Future<void> getAllStudents() async {
//   final studentDB = await Hive.openBox<StudentMod>('db_student');
//   studentListNotifier.value.clear();
//   studentListNotifier.value.addAll(studentDB.values);
//   studentListNotifier.notifyListeners();
// }

// Future<void> deleteStudent(int index) async {
//   final studentDB = await Hive.openBox<StudentMod>('db_student');
//   final keys = studentDB.keys;
//   final key = keys.elementAt(index);
//   await studentDB.delete(key);

//   // studentListNotifier.value.addAll(studentDB.values);
//   // studentListNotifier.notifyListeners();
//   getAllStudents();
// }

// Future<void> updateStudent(value, var index) async {
//   final studentDB = await Hive.openBox<StudentMod>('db_student');
//   final keys = studentDB.keys;
//   final key = keys.elementAt(index);
//   await studentDB.put(key, value);
//   studentListNotifier.value.add(value);
//   studentListNotifier.notifyListeners();
//   getAllStudents();
// }
