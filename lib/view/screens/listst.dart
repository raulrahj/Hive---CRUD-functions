import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:hive1/logic/search/searchstudent_bloc.dart';
import 'package:hive1/logic/student/student_bloc.dart';
import 'package:hive1/view/widgets/all_students_list.dart';
import 'package:hive1/view/widgets/search_result_list.dart';
class ListStudent extends StatelessWidget {
  final image;
  ListStudent({Key? key, this.image}) : super(key: key);
  final _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      BlocProvider.of<StudentBloc>(context)
          .add(const StudentEvent.getAllStudent());
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student List'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                onChanged: (value) {
                  context
                      .read<StudentBloc>()
                      .add(StudentEvent.searchStudent(studentName: value));
                },
                controller: _search,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Search...')),
          ),
          BlocBuilder<StudentBloc, StudentState>(
            builder: (context, state) {
              if (state.searchResultList.isNotEmpty) {
                return SearchResultList(data: state.searchResultList);
              }else if(state.isAvailable==false && state.isSearching){
                return const Expanded(child:  Center(child: Text('No Results'),));
              }
              
               else {
                return AllStudents(data: state.studentList);
              }
            },
          ),
        ],
      ),
    );
  }
}
