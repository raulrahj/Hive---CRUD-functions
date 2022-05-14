import 'dart:io';
import 'listst.dart';
import '../widgets/widgets.dart';
import '../../data/model/model.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive1/logic/student/student_bloc.dart';

var image;
var contrllr;
var _nameController = TextEditingController();
var _ageController = TextEditingController();
var _clasController = TextEditingController();
var _resultController = TextEditingController();
ImagePicker imagePicker = ImagePicker();
Widget ver10 = const SizedBox(
  height: 10,
);

class AddStudent extends StatefulWidget {
  const AddStudent({Key? key}) : super(key: key);

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                height: 90,
              ),
              ver10,
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
                hint: "Result",
              ),
              ver10,
              SizedBox(
                width: double.infinity,
                height: 60,
                child: Row(
                  children: [
                    (image == null)
                        ? const CircleAvatar(
                            radius: 70,
                            child: Icon(Icons.person),
                            // backgroundImage: FileImage(File(image)),
                          )
                        : FutureBuilder(
                            // future: image,
                            builder: (context, snapshot) {
                            return CircleAvatar(
                              radius: 70,
                              backgroundImage:
                                  FileImage(File(image.toString())),
                            );
                          }),
                    ElevatedButton(
                      style: const ButtonStyle(),
                      onPressed: () async {
                        image = picImageSelection(context);
                        setState(() {});
                      },
                      child: const Text('Upload profile picture'),
                      ),
                  ],
                ),
              ),
              ver10,
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {     
                    addButtonClicked(context);
                    _ageController.text = '';
                    _nameController.text = '';
                    _clasController.text = '';
                    _resultController.text  = '';
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: const Text('ADD'),
                ),
              ),
              SizedBox(
                  width: 250,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ListStudent(
                              image: image,
                            ),
                          ),
                        );
                        context
                            .read<StudentBloc>()
                            .add(const StudentEvent.getAllStudent());
                      },
                      child: const Text('View List')))
            ],
          ),
        ),
      ),
    );
  }

  // SizedBox pickImageF() {
  Future<void> addButtonClicked(ctx) async {
    final _name = _nameController.text.trim();
    final _age = _ageController.text.trim();
    final _clas = _clasController.text.trim();
    final _result = _resultController.text.trim();
    if (_name.isEmpty || _age.isEmpty || image == null) {
      return;
      
    }
    final _student = StudentMod(
        id: DateTime.now().millisecond,
        name: _name,
        age: _age,
        clas: _clas,
        result: _result,
        image: image.path);

    BlocProvider.of<StudentBloc>(ctx)
        .add(StudentEvent.addStudent(model: _student));

    //addStudent(_student);
    if (_student.name.isNotEmpty) {
      ScaffoldMessenger.of(ctx).showSnackBar(const SnackBar(
          behavior: SnackBarBehavior
              .floating, //behavior used to change decoration or change default config
          margin: EdgeInsets.all(10),
          backgroundColor: Colors.teal,
          content: Text(
            'Successfully added ...',
            style: TextStyle(color: Colors.white),
          )));
    }
  }
}
