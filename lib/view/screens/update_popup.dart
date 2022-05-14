import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive1/logic/student/student_bloc.dart';
import '../../data/db/db_functions/db_functions.dart';
import '../../data/model/model.dart';
import '../widgets/widgets.dart';

class Popup extends StatelessWidget {
  var image;
  final index;
  Popup({Key? key, required this.index}) : super(key: key);

  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _clasController = TextEditingController();
  final _resultController = TextEditingController();

  Widget ver10 = const SizedBox(
    height: 10,
  );
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StudentBloc, StudentState>(
      listener: (context, state) {},
      builder: (context, state) {
        final StudentMod _data = state.studentList.elementAt(index);
        _nameController.text = _data.name;
        _ageController.text = _data.age;
        _clasController.text = _data.clas;
        _resultController.text = _data.result;
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
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
                  ),
                  ver10,
                  SizedBox(
                    width: 350,
                    height: 55,
                    child: ElevatedButton(
                      style: const ButtonStyle(),
                      onPressed: () async {
                        image = await picImageSelection(context);
                        // XFile? img = await imagePicker.pickImage(source:ImageSource.gallery);
                        // this.image = File(img!.path);
                      },
                      child: const Text('Change profile picture'),
                    ),
                  ),
                  ver10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('CANCEL'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          final _name = _nameController.text.trim();
                          final _age = _ageController.text.trim();
                          final _clas = _clasController.text.trim();
                          final _result = _resultController.text.trim();

                          final _update = StudentMod(
                              name: _name,
                              age: _age,
                              clas: _clas,
                              result: _result,
                              image: image ?? _data.image,
                              id: _data.id);
                          context
                              .read<StudentBloc>()
                              .add(StudentEvent.updateStudent(model: _update));
                          context
                              .read<StudentBloc>()
                              .add(const StudentEvent.getAllStudent());
                          // updateStudent(update, index);
                          Navigator.of(context).pop();
                        },
                        child: const Text('OK'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
