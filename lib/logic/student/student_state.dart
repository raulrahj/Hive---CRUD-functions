part of 'student_bloc.dart';

@freezed
class StudentState with _$StudentState {
  const factory StudentState(
      {required List<StudentMod> studentList,
      required List<StudentMod> searchResultList,required bool isAvailable,required bool isSearching}) = _StudentState;
  factory StudentState.initial() =>
      const StudentState(searchResultList: [], studentList: [], isAvailable: false, isSearching: false);
}
