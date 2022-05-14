import 'dart:io';
import '../screens/addst.dart';
import 'package:flutter/material.dart';
import 'package:hive1/data/model/model.dart';
import 'package:image_picker/image_picker.dart';
import 'package:hive1/logic/student/student_bloc.dart';

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
        border: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.red)),
        disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.white)),
        labelText: hint,
        labelStyle: const TextStyle(letterSpacing: 4, fontSize: 12),
      ),
    );
  }
}

alertDelete(context, StudentMod data, int index) async {
  return showDialog(
      context: context,
      builder: (ctx1) {
        return AlertDialog(
          title: const Text('Confirm'),
          content: const Text("Data will be cleared"),
          actions: [
            TextButton(
                onPressed: (() {
                  Navigator.of(context).pop();
                }),
                child: const Text('Cancel')),
            TextButton(
              onPressed: () {
                context
                    .read<StudentBloc>()
                    .of(context)
                    .add(StudentEvent.deleteStudent(key: index));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    behavior: SnackBarBehavior
                        .floating, //behavior used to change decoration or change default config
                    margin: EdgeInsets.all(10),
                    backgroundColor: Colors.teal,
                    content: Text(
                      'Deleted a Data !',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
                Navigator.of(context).pop();
              },
              child: const Text('Ok'),
            )
          ],
        );
      });
}

picImageSelection(context) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Open'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                GestureDetector(
                  child: const Text('Camera'),
                  onTap: () async {
                    XFile? img =
                        await imagePicker.pickImage(source: ImageSource.camera);
                    image = File(img!.path);
                    Navigator.of(context).pop();
                  },
                ),
                const Padding(padding: EdgeInsets.all(10)),
                GestureDetector(
                  child: const Text('Gallery'),
                  onTap: () async {
                    XFile? img = await imagePicker.pickImage(
                        source: ImageSource.gallery);
                    image = File(img!.path);
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
          ),
        );
      });
}
