import 'package:bloc/bloc.dart';
import 'package:hive1/data/model/model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_event.dart';
part 'student_state.dart';
part 'student_bloc.freezed.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  StudentBloc() : super(StudentState.initial()) {
    on<AddStudent>((event, emit) async {
      final studentDB = await Hive.openBox<StudentMod>('db_student');

      studentDB.put(event.model.id, event.model,);
      // studentDB.clear();
      add(const StudentEvent.getAllStudent());
    });
    on<GetAllStudent>((event, emit) async {
      final studentDB = await Hive.openBox<StudentMod>('db_student');
      emit(state.copyWith(studentList: studentDB.values.toList()));
    });
    on<SearchStudent>((event, emit) async {
      List<StudentMod> result = state.studentList
          .where((element) => element.name
              .toLowerCase()
              .contains(event.studentName.toLowerCase()))
          .toList();
      emit(state.copyWith(searchResultList: result,isAvailable: state.searchResultList.isNotEmpty ?true:false,isSearching: true));
    });
    on(<UpdateStudent>(event, emit) async {
      final studentDB = await Hive.openBox<StudentMod>('db_student');
      studentDB.put(event.model.id, event.model);
      const GetAllStudent();
      emit(state.studentList);
    });
    on<DeleteStudent>((event, emit) async {
      final studentDB = await Hive.openBox<StudentMod>('db_student');
      final key = studentDB.keys.elementAt(event.key);
      studentDB.delete(key);
      add(const StudentEvent.getAllStudent());
      // const GetAllStudent();
    });
  }
}
