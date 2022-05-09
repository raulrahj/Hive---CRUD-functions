import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hive1/db/db_functions/db_functions.dart';
import 'package:hive1/screens/addst.dart';
import 'package:image_picker/image_picker.dart';

class TextBox extends StatelessWidget {
  final contrllr;
  final type;
  late String? hint;
// text = hint;
  TextBox({this.contrllr, this.type, this.hint});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: contrllr,
      keyboardType: type,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.red)),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.white)),
        labelText: hint,
        labelStyle: TextStyle(letterSpacing: 4, fontSize: 12),
      ),
    );
  }
}

alertDelete(context, index) async {
  return showDialog(
      context: context,
      builder: (ctx1) {
        return AlertDialog(
          title: Text('Confirm'),
          content: Text("Data will be cleared"),
          actions: [
            TextButton(
                onPressed: (() {
                  Navigator.of(context).pop();
                }),
                child: Text('Cancel')),
            TextButton(
                onPressed: () {
                  deleteStudent(index);
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      behavior: SnackBarBehavior
                          .floating, //behavior used to change decoration or change default config
                      margin: EdgeInsets.all(10),
                      backgroundColor: Colors.teal,
                      content: Text(
                        'Deleted a Data !',
                        style: TextStyle(color: Colors.white),
                      )));
                  Navigator.of(context).pop();
                },
                child: Text('Ok'))
          ],
        );
      });
}

picImageSelection(context) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Open'),
          content: SingleChildScrollView(
            child: ListBody(children: [
              GestureDetector(
                child: Text('Camera'),
                onTap: () async {
                  XFile? img =
                      await imagePicker.pickImage(source: ImageSource.camera);
                  image = File(img!.path);
                  Navigator.of(context).pop();
                },
              ),
              Padding(padding: EdgeInsets.all(10)),
              GestureDetector(
                child: Text('Gallery'),
                onTap: () async {
                  XFile? img =
                      await imagePicker.pickImage(source: ImageSource.gallery);
                  image = File(img!.path);
                  Navigator.of(context).pop();
                },
              )
            ]),
          ),
        );
      });
}
