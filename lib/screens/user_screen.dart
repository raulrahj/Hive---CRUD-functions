import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive1/db/db_functions/db_functions.dart';
import 'package:hive1/model/model.dart';
import 'package:hive1/screens/addst.dart';

class UserScreen extends StatelessWidget {
  Widget div = Divider(
    color: Colors.teal,
    thickness: 2,
    indent: 20,
    endIndent: 20,
  );

  final ind;
  //const UserScreen({ Key? key, this.ind }) : super(key: key);
  UserScreen(this.ind);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: studentListNotifier,
        builder:
            (BuildContext ctx, List<StudentMod> studentList, Widget? child) {
          final data = studentList[this.ind];

          return Scaffold(
            appBar: AppBar(title: Text('Details'),backgroundColor: Colors.teal,),
            body: SafeArea(
              child: Column(
                children: [
                  ver10,
                  Container(
                    child:(data.image.toString().isNotEmpty)? CircleAvatar(
                        backgroundImage: FileImage(File(data.image!)),radius: 100,): CircleAvatar(),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      div,
                      display("Name :", data.name.toUpperCase()),
                      div,
                      display("Age :", data.age),
                      div,
                      display("class :", data.clas),
                      div,
                      display("Result  :", data.result.toUpperCase()),
                      div,
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}

Widget display(field, data) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text(
        field,
        style: TextStyle(fontSize: 30),
      ),
      SizedBox(
        width: 20,
      ),
      Text(
        data,
        style: TextStyle(fontSize: 30),
      )
    ],
  );
}
