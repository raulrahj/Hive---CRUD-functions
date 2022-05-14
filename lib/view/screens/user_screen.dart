import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive1/logic/student/student_bloc.dart';
import '../../data/db/db_functions/db_functions.dart';
import '../../data/model/model.dart';
import 'addst.dart';

class UserScreen extends StatelessWidget {
  final Widget  div = const Divider(
    color: Colors.teal,
    thickness: 2,
    indent: 20,
    endIndent: 20,
  );

  final ind;
  //const UserScreen({ Key? key, this.ind }) : super(key: key);
 const UserScreen(this.ind, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudentBloc, StudentState>(
      builder: (context, state) {
        final StudentMod data = state.studentList[ind];
        return Scaffold(
          appBar: AppBar(
            title: const Text('Details'),
            backgroundColor: Colors.teal,
          ),
          body: SafeArea(
            child: Column(
              children: [
                ver10,
                Container(
                  child: (data.image!.isNotEmpty)
                      ? CircleAvatar(
                          backgroundImage: FileImage(File(data.image!)),
                          radius: 100,
                        )
                      : const CircleAvatar(),
                ),
                const SizedBox(
                  height: 33,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
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
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

Widget display(field, data) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text(
        field,
        style: const TextStyle(fontSize: 30),
      ),
      const SizedBox(
        width: 20,
      ),
      Text(
        data,
        style: const TextStyle(fontSize: 30),
      )
    ],
  );
}
