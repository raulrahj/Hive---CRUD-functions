import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hive1/db/db_functions/db_functions.dart';
import 'package:hive1/model/model.dart';
import 'package:hive1/screens/update_popup.dart';
import 'package:hive1/screens/user_screen.dart';
import 'package:hive1/screens/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ListStudent extends StatelessWidget {
  // Popup p = Popup(index: ,);
  final image;
  ListStudent({Key? key, this.image}) : super(key: key);
  final _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    getAllStudents();
    return ValueListenableBuilder(
      valueListenable: studentListNotifier,
      builder: (BuildContext ctx, List<StudentMod> studentList, Widget? child) {
        if (studentList.isEmpty) {
          return Scaffold(
            appBar: AppBar(title: Text('Student List')),
            body: SafeArea(
              child: const Center(
                child: Text('No Data Found'),
              ),
            ),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              title: Text('Student List'),
              backgroundColor: Colors.teal,
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      onChanged: (value) {
                        studentListNotifier.value = studentListNotifier.value
                            .where((element) => element.name.contains(value))
                            .toList();
                        if (value == '') {
                          getAllStudents();
                        }
                      },
                      controller: _search,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: 'Search...')),
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (ctx, index) {
                      final data = studentList[index];
                      var imag = data.image;
                      return Card(
                        color: Colors.teal.shade100,
                        margin: const EdgeInsets.all(10),
                        elevation: 5,
                        child: ListTile(
                          leading: CircleAvatar(
                              backgroundImage:   FileImage(File(imag!))),
                          title: Text(
                            data.name,
                            style: TextStyle(color: Colors.black),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UserScreen(index)));
                          },
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                  onPressed: () async {
                                    if (data != null) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Popup(
                                                    index: index,
                                                  )));
                                      //  p.showText(index);
                                    }
                                  },
                                  icon: Icon(
                                    Icons.edit,
                                    color: Colors.grey,
                                  )),
                              IconButton(
                                onPressed: () {
                                  alertDelete(context, index);
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: studentList.length,
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
