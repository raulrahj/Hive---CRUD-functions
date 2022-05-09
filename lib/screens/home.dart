import 'package:flutter/material.dart';
import 'package:hive1/db/db_functions/db_functions.dart';
import 'package:hive1/screens/addst.dart';
import 'package:hive1/screens/listst.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getAllStudents();
    return const Scaffold(
      body: AddStudent(),
    );
  }
}
