import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive1/data/model/model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive1/view/screens/user_screen.dart';
import 'package:hive1/view/screens/update_popup.dart';
import 'package:hive1/logic/student/student_bloc.dart';
// import 'package:hive1/view/widgets/widgets.dart';

class AllStudents extends StatelessWidget {
  final List<StudentMod> data;
  const AllStudents({required this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          final _data = data[index];
          var imag = _data.image;
          return Card(
            color: Colors.teal.shade100,
            margin: const EdgeInsets.all(10),
            elevation: 5,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: FileImage(
                  File(imag!),
                ),
              ),
              title: Text(
                _data.name,
                style: const TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserScreen(index),
                  ),
                );
              },
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Popup(
                              index: index,
                            ),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.grey,
                      )),
                  IconButton(
                    onPressed: () {
                      // StudentMod detalis = data.elementAt(index);
                      // context
                      // .read<StudentBloc>()
                      // .add(StudentEvent.deleteStudent(key: index));
                      // alertDelete(context, detalis, index);
                      context
                          .read<StudentBloc>()
                          .add(StudentEvent.deleteStudent(key: index));
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: data.length,
      ),
    );
  }
}
