part of 'student_bloc.dart';

@freezed
class StudentEvent with _$StudentEvent {
  const factory StudentEvent.addStudent({required StudentMod model}) =
      AddStudent;
  const factory StudentEvent.getAllStudent() = GetAllStudent;
  const factory StudentEvent.searchStudent({required String studentName}) =
      SearchStudent;
  const factory StudentEvent.updateStudent({required StudentMod model, required int id}) =
      UpdateStudent;
  const factory StudentEvent.deleteStudent({required int key}) = DeleteStudent;
}
