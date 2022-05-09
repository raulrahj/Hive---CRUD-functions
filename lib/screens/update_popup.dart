import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive1/db/db_functions/db_functions.dart';
import 'package:hive1/screens/addst.dart';
import 'package:hive1/screens/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_picker/image_picker.dart';

import '../model/model.dart';

class Popup extends StatelessWidget {
  var image;
  final index;
  Popup({Key? key, required this.index}) : super(key: key);

  var _nameController = TextEditingController();
  var _ageController = TextEditingController();
  var _clasController = TextEditingController();
  var _resultController = TextEditingController();

  Widget ver10 = SizedBox(
    height: 10,
  );
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: studentListNotifier,
        builder:
            (BuildContext ctx, List<StudentMod> studentList, Widget? child) {
          final data = studentList[this.index];
          _nameController.text = data.name;
          _ageController.text = data.age;
          _clasController.text = data.clas;
          _resultController.text = data.result;

          return Scaffold(
              body: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      TextBox(
                        contrllr: _nameController,
                        type: TextInputType.text,
                        hint: 'Name',
                      ),
                      ver10,
                      TextBox(
                        contrllr: _ageController,
                        type: TextInputType.number,
                        hint: 'Age',
                      ),
                      ver10,
                      TextBox(
                        contrllr: _clasController,
                        type: TextInputType.number,
                        hint: 'Class',
                      ),
                      ver10,
                      TextBox(
                        contrllr: _resultController,
                        type: TextInputType.text,
                        hint: 'Result',
                      ),ver10,
                        SizedBox(
              width: 350,
              height: 55,
              child: ElevatedButton(
                  style: ButtonStyle(),
                  onPressed: () async {
                   this.image=await picImageSelection(context);
                  // XFile? img = await imagePicker.pickImage(source:ImageSource.gallery);
                  // this.image = File(img!.path);
                  },
                  child: Text('Change profile picture')),
            ),ver10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                         
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('CANCEL')), SizedBox(width: 10,),
                          ElevatedButton(
                              onPressed: () async {
                                final _name = _nameController.text.trim();
                                final _age = _ageController.text.trim();
                                final _clas = _clasController.text.trim();
                                final _result = _resultController.text.trim();
                                final update = StudentMod(
                                    name: _name,
                                    age: _age,
                                    clas: _clas,
                                    result: _result,
                                    image: image,
                                    );
                                   
                                updateStudent(update, index);
                                Navigator.of(context).pop();
          
                              },
                              child: Text('OK')), SizedBox(width: 20,),
                        ],
                      ),
                    ]),
                  )));
        });
  }
}
