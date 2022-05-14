// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'student_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StudentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StudentMod model) addStudent,
    required TResult Function() getAllStudent,
    required TResult Function(String studentName) searchStudent,
    required TResult Function(StudentMod model) updateStudent,
    required TResult Function(int key) deleteStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StudentMod model)? addStudent,
    TResult Function()? getAllStudent,
    TResult Function(String studentName)? searchStudent,
    TResult Function(StudentMod model)? updateStudent,
    TResult Function(int key)? deleteStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StudentMod model)? addStudent,
    TResult Function()? getAllStudent,
    TResult Function(String studentName)? searchStudent,
    TResult Function(StudentMod model)? updateStudent,
    TResult Function(int key)? deleteStudent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(GetAllStudent value) getAllStudent,
    required TResult Function(SearchStudent value) searchStudent,
    required TResult Function(UpdateStudent value) updateStudent,
    required TResult Function(DeleteStudent value) deleteStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddStudent value)? addStudent,
    TResult Function(GetAllStudent value)? getAllStudent,
    TResult Function(SearchStudent value)? searchStudent,
    TResult Function(UpdateStudent value)? updateStudent,
    TResult Function(DeleteStudent value)? deleteStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudent value)? addStudent,
    TResult Function(GetAllStudent value)? getAllStudent,
    TResult Function(SearchStudent value)? searchStudent,
    TResult Function(UpdateStudent value)? updateStudent,
    TResult Function(DeleteStudent value)? deleteStudent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentEventCopyWith<$Res> {
  factory $StudentEventCopyWith(
          StudentEvent value, $Res Function(StudentEvent) then) =
      _$StudentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StudentEventCopyWithImpl<$Res> implements $StudentEventCopyWith<$Res> {
  _$StudentEventCopyWithImpl(this._value, this._then);

  final StudentEvent _value;
  // ignore: unused_field
  final $Res Function(StudentEvent) _then;
}

/// @nodoc
abstract class _$$AddStudentCopyWith<$Res> {
  factory _$$AddStudentCopyWith(
          _$AddStudent value, $Res Function(_$AddStudent) then) =
      __$$AddStudentCopyWithImpl<$Res>;
  $Res call({StudentMod model});
}

/// @nodoc
class __$$AddStudentCopyWithImpl<$Res> extends _$StudentEventCopyWithImpl<$Res>
    implements _$$AddStudentCopyWith<$Res> {
  __$$AddStudentCopyWithImpl(
      _$AddStudent _value, $Res Function(_$AddStudent) _then)
      : super(_value, (v) => _then(v as _$AddStudent));

  @override
  _$AddStudent get _value => super._value as _$AddStudent;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$AddStudent(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as StudentMod,
    ));
  }
}

/// @nodoc

class _$AddStudent implements AddStudent {
  const _$AddStudent({required this.model});

  @override
  final StudentMod model;

  @override
  String toString() {
    return 'StudentEvent.addStudent(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStudent &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  _$$AddStudentCopyWith<_$AddStudent> get copyWith =>
      __$$AddStudentCopyWithImpl<_$AddStudent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StudentMod model) addStudent,
    required TResult Function() getAllStudent,
    required TResult Function(String studentName) searchStudent,
    required TResult Function(StudentMod model) updateStudent,
    required TResult Function(int key) deleteStudent,
  }) {
    return addStudent(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StudentMod model)? addStudent,
    TResult Function()? getAllStudent,
    TResult Function(String studentName)? searchStudent,
    TResult Function(StudentMod model)? updateStudent,
    TResult Function(int key)? deleteStudent,
  }) {
    return addStudent?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StudentMod model)? addStudent,
    TResult Function()? getAllStudent,
    TResult Function(String studentName)? searchStudent,
    TResult Function(StudentMod model)? updateStudent,
    TResult Function(int key)? deleteStudent,
    required TResult orElse(),
  }) {
    if (addStudent != null) {
      return addStudent(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(GetAllStudent value) getAllStudent,
    required TResult Function(SearchStudent value) searchStudent,
    required TResult Function(UpdateStudent value) updateStudent,
    required TResult Function(DeleteStudent value) deleteStudent,
  }) {
    return addStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddStudent value)? addStudent,
    TResult Function(GetAllStudent value)? getAllStudent,
    TResult Function(SearchStudent value)? searchStudent,
    TResult Function(UpdateStudent value)? updateStudent,
    TResult Function(DeleteStudent value)? deleteStudent,
  }) {
    return addStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudent value)? addStudent,
    TResult Function(GetAllStudent value)? getAllStudent,
    TResult Function(SearchStudent value)? searchStudent,
    TResult Function(UpdateStudent value)? updateStudent,
    TResult Function(DeleteStudent value)? deleteStudent,
    required TResult orElse(),
  }) {
    if (addStudent != null) {
      return addStudent(this);
    }
    return orElse();
  }
}

abstract class AddStudent implements StudentEvent {
  const factory AddStudent({required final StudentMod model}) = _$AddStudent;

  StudentMod get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AddStudentCopyWith<_$AddStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllStudentCopyWith<$Res> {
  factory _$$GetAllStudentCopyWith(
          _$GetAllStudent value, $Res Function(_$GetAllStudent) then) =
      __$$GetAllStudentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllStudentCopyWithImpl<$Res>
    extends _$StudentEventCopyWithImpl<$Res>
    implements _$$GetAllStudentCopyWith<$Res> {
  __$$GetAllStudentCopyWithImpl(
      _$GetAllStudent _value, $Res Function(_$GetAllStudent) _then)
      : super(_value, (v) => _then(v as _$GetAllStudent));

  @override
  _$GetAllStudent get _value => super._value as _$GetAllStudent;
}

/// @nodoc

class _$GetAllStudent implements GetAllStudent {
  const _$GetAllStudent();

  @override
  String toString() {
    return 'StudentEvent.getAllStudent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllStudent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StudentMod model) addStudent,
    required TResult Function() getAllStudent,
    required TResult Function(String studentName) searchStudent,
    required TResult Function(StudentMod model) updateStudent,
    required TResult Function(int key) deleteStudent,
  }) {
    return getAllStudent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StudentMod model)? addStudent,
    TResult Function()? getAllStudent,
    TResult Function(String studentName)? searchStudent,
    TResult Function(StudentMod model)? updateStudent,
    TResult Function(int key)? deleteStudent,
  }) {
    return getAllStudent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StudentMod model)? addStudent,
    TResult Function()? getAllStudent,
    TResult Function(String studentName)? searchStudent,
    TResult Function(StudentMod model)? updateStudent,
    TResult Function(int key)? deleteStudent,
    required TResult orElse(),
  }) {
    if (getAllStudent != null) {
      return getAllStudent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(GetAllStudent value) getAllStudent,
    required TResult Function(SearchStudent value) searchStudent,
    required TResult Function(UpdateStudent value) updateStudent,
    required TResult Function(DeleteStudent value) deleteStudent,
  }) {
    return getAllStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddStudent value)? addStudent,
    TResult Function(GetAllStudent value)? getAllStudent,
    TResult Function(SearchStudent value)? searchStudent,
    TResult Function(UpdateStudent value)? updateStudent,
    TResult Function(DeleteStudent value)? deleteStudent,
  }) {
    return getAllStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudent value)? addStudent,
    TResult Function(GetAllStudent value)? getAllStudent,
    TResult Function(SearchStudent value)? searchStudent,
    TResult Function(UpdateStudent value)? updateStudent,
    TResult Function(DeleteStudent value)? deleteStudent,
    required TResult orElse(),
  }) {
    if (getAllStudent != null) {
      return getAllStudent(this);
    }
    return orElse();
  }
}

abstract class GetAllStudent implements StudentEvent {
  const factory GetAllStudent() = _$GetAllStudent;
}

/// @nodoc
abstract class _$$SearchStudentCopyWith<$Res> {
  factory _$$SearchStudentCopyWith(
          _$SearchStudent value, $Res Function(_$SearchStudent) then) =
      __$$SearchStudentCopyWithImpl<$Res>;
  $Res call({String studentName});
}

/// @nodoc
class __$$SearchStudentCopyWithImpl<$Res>
    extends _$StudentEventCopyWithImpl<$Res>
    implements _$$SearchStudentCopyWith<$Res> {
  __$$SearchStudentCopyWithImpl(
      _$SearchStudent _value, $Res Function(_$SearchStudent) _then)
      : super(_value, (v) => _then(v as _$SearchStudent));

  @override
  _$SearchStudent get _value => super._value as _$SearchStudent;

  @override
  $Res call({
    Object? studentName = freezed,
  }) {
    return _then(_$SearchStudent(
      studentName: studentName == freezed
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchStudent implements SearchStudent {
  const _$SearchStudent({required this.studentName});

  @override
  final String studentName;

  @override
  String toString() {
    return 'StudentEvent.searchStudent(studentName: $studentName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStudent &&
            const DeepCollectionEquality()
                .equals(other.studentName, studentName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(studentName));

  @JsonKey(ignore: true)
  @override
  _$$SearchStudentCopyWith<_$SearchStudent> get copyWith =>
      __$$SearchStudentCopyWithImpl<_$SearchStudent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StudentMod model) addStudent,
    required TResult Function() getAllStudent,
    required TResult Function(String studentName) searchStudent,
    required TResult Function(StudentMod model) updateStudent,
    required TResult Function(int key) deleteStudent,
  }) {
    return searchStudent(studentName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StudentMod model)? addStudent,
    TResult Function()? getAllStudent,
    TResult Function(String studentName)? searchStudent,
    TResult Function(StudentMod model)? updateStudent,
    TResult Function(int key)? deleteStudent,
  }) {
    return searchStudent?.call(studentName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StudentMod model)? addStudent,
    TResult Function()? getAllStudent,
    TResult Function(String studentName)? searchStudent,
    TResult Function(StudentMod model)? updateStudent,
    TResult Function(int key)? deleteStudent,
    required TResult orElse(),
  }) {
    if (searchStudent != null) {
      return searchStudent(studentName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(GetAllStudent value) getAllStudent,
    required TResult Function(SearchStudent value) searchStudent,
    required TResult Function(UpdateStudent value) updateStudent,
    required TResult Function(DeleteStudent value) deleteStudent,
  }) {
    return searchStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddStudent value)? addStudent,
    TResult Function(GetAllStudent value)? getAllStudent,
    TResult Function(SearchStudent value)? searchStudent,
    TResult Function(UpdateStudent value)? updateStudent,
    TResult Function(DeleteStudent value)? deleteStudent,
  }) {
    return searchStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudent value)? addStudent,
    TResult Function(GetAllStudent value)? getAllStudent,
    TResult Function(SearchStudent value)? searchStudent,
    TResult Function(UpdateStudent value)? updateStudent,
    TResult Function(DeleteStudent value)? deleteStudent,
    required TResult orElse(),
  }) {
    if (searchStudent != null) {
      return searchStudent(this);
    }
    return orElse();
  }
}

abstract class SearchStudent implements StudentEvent {
  const factory SearchStudent({required final String studentName}) =
      _$SearchStudent;

  String get studentName => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SearchStudentCopyWith<_$SearchStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateStudentCopyWith<$Res> {
  factory _$$UpdateStudentCopyWith(
          _$UpdateStudent value, $Res Function(_$UpdateStudent) then) =
      __$$UpdateStudentCopyWithImpl<$Res>;
  $Res call({StudentMod model});
}

/// @nodoc
class __$$UpdateStudentCopyWithImpl<$Res>
    extends _$StudentEventCopyWithImpl<$Res>
    implements _$$UpdateStudentCopyWith<$Res> {
  __$$UpdateStudentCopyWithImpl(
      _$UpdateStudent _value, $Res Function(_$UpdateStudent) _then)
      : super(_value, (v) => _then(v as _$UpdateStudent));

  @override
  _$UpdateStudent get _value => super._value as _$UpdateStudent;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$UpdateStudent(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as StudentMod,
    ));
  }
}

/// @nodoc

class _$UpdateStudent implements UpdateStudent {
  const _$UpdateStudent({required this.model});

  @override
  final StudentMod model;

  @override
  String toString() {
    return 'StudentEvent.updateStudent(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStudent &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  _$$UpdateStudentCopyWith<_$UpdateStudent> get copyWith =>
      __$$UpdateStudentCopyWithImpl<_$UpdateStudent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StudentMod model) addStudent,
    required TResult Function() getAllStudent,
    required TResult Function(String studentName) searchStudent,
    required TResult Function(StudentMod model) updateStudent,
    required TResult Function(int key) deleteStudent,
  }) {
    return updateStudent(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StudentMod model)? addStudent,
    TResult Function()? getAllStudent,
    TResult Function(String studentName)? searchStudent,
    TResult Function(StudentMod model)? updateStudent,
    TResult Function(int key)? deleteStudent,
  }) {
    return updateStudent?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StudentMod model)? addStudent,
    TResult Function()? getAllStudent,
    TResult Function(String studentName)? searchStudent,
    TResult Function(StudentMod model)? updateStudent,
    TResult Function(int key)? deleteStudent,
    required TResult orElse(),
  }) {
    if (updateStudent != null) {
      return updateStudent(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(GetAllStudent value) getAllStudent,
    required TResult Function(SearchStudent value) searchStudent,
    required TResult Function(UpdateStudent value) updateStudent,
    required TResult Function(DeleteStudent value) deleteStudent,
  }) {
    return updateStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddStudent value)? addStudent,
    TResult Function(GetAllStudent value)? getAllStudent,
    TResult Function(SearchStudent value)? searchStudent,
    TResult Function(UpdateStudent value)? updateStudent,
    TResult Function(DeleteStudent value)? deleteStudent,
  }) {
    return updateStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudent value)? addStudent,
    TResult Function(GetAllStudent value)? getAllStudent,
    TResult Function(SearchStudent value)? searchStudent,
    TResult Function(UpdateStudent value)? updateStudent,
    TResult Function(DeleteStudent value)? deleteStudent,
    required TResult orElse(),
  }) {
    if (updateStudent != null) {
      return updateStudent(this);
    }
    return orElse();
  }
}

abstract class UpdateStudent implements StudentEvent {
  const factory UpdateStudent({required final StudentMod model}) =
      _$UpdateStudent;

  StudentMod get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UpdateStudentCopyWith<_$UpdateStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteStudentCopyWith<$Res> {
  factory _$$DeleteStudentCopyWith(
          _$DeleteStudent value, $Res Function(_$DeleteStudent) then) =
      __$$DeleteStudentCopyWithImpl<$Res>;
  $Res call({int key});
}

/// @nodoc
class __$$DeleteStudentCopyWithImpl<$Res>
    extends _$StudentEventCopyWithImpl<$Res>
    implements _$$DeleteStudentCopyWith<$Res> {
  __$$DeleteStudentCopyWithImpl(
      _$DeleteStudent _value, $Res Function(_$DeleteStudent) _then)
      : super(_value, (v) => _then(v as _$DeleteStudent));

  @override
  _$DeleteStudent get _value => super._value as _$DeleteStudent;

  @override
  $Res call({
    Object? key = freezed,
  }) {
    return _then(_$DeleteStudent(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteStudent implements DeleteStudent {
  const _$DeleteStudent({required this.key});

  @override
  final int key;

  @override
  String toString() {
    return 'StudentEvent.deleteStudent(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteStudent &&
            const DeepCollectionEquality().equals(other.key, key));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(key));

  @JsonKey(ignore: true)
  @override
  _$$DeleteStudentCopyWith<_$DeleteStudent> get copyWith =>
      __$$DeleteStudentCopyWithImpl<_$DeleteStudent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StudentMod model) addStudent,
    required TResult Function() getAllStudent,
    required TResult Function(String studentName) searchStudent,
    required TResult Function(StudentMod model) updateStudent,
    required TResult Function(int key) deleteStudent,
  }) {
    return deleteStudent(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(StudentMod model)? addStudent,
    TResult Function()? getAllStudent,
    TResult Function(String studentName)? searchStudent,
    TResult Function(StudentMod model)? updateStudent,
    TResult Function(int key)? deleteStudent,
  }) {
    return deleteStudent?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StudentMod model)? addStudent,
    TResult Function()? getAllStudent,
    TResult Function(String studentName)? searchStudent,
    TResult Function(StudentMod model)? updateStudent,
    TResult Function(int key)? deleteStudent,
    required TResult orElse(),
  }) {
    if (deleteStudent != null) {
      return deleteStudent(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStudent value) addStudent,
    required TResult Function(GetAllStudent value) getAllStudent,
    required TResult Function(SearchStudent value) searchStudent,
    required TResult Function(UpdateStudent value) updateStudent,
    required TResult Function(DeleteStudent value) deleteStudent,
  }) {
    return deleteStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddStudent value)? addStudent,
    TResult Function(GetAllStudent value)? getAllStudent,
    TResult Function(SearchStudent value)? searchStudent,
    TResult Function(UpdateStudent value)? updateStudent,
    TResult Function(DeleteStudent value)? deleteStudent,
  }) {
    return deleteStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStudent value)? addStudent,
    TResult Function(GetAllStudent value)? getAllStudent,
    TResult Function(SearchStudent value)? searchStudent,
    TResult Function(UpdateStudent value)? updateStudent,
    TResult Function(DeleteStudent value)? deleteStudent,
    required TResult orElse(),
  }) {
    if (deleteStudent != null) {
      return deleteStudent(this);
    }
    return orElse();
  }
}

abstract class DeleteStudent implements StudentEvent {
  const factory DeleteStudent({required final int key}) = _$DeleteStudent;

  int get key => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$DeleteStudentCopyWith<_$DeleteStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StudentState {
  List<StudentMod> get studentList => throw _privateConstructorUsedError;
  List<StudentMod> get searchResultList => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;
  bool get isSearching => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudentStateCopyWith<StudentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentStateCopyWith<$Res> {
  factory $StudentStateCopyWith(
          StudentState value, $Res Function(StudentState) then) =
      _$StudentStateCopyWithImpl<$Res>;
  $Res call(
      {List<StudentMod> studentList,
      List<StudentMod> searchResultList,
      bool isAvailable,
      bool isSearching});
}

/// @nodoc
class _$StudentStateCopyWithImpl<$Res> implements $StudentStateCopyWith<$Res> {
  _$StudentStateCopyWithImpl(this._value, this._then);

  final StudentState _value;
  // ignore: unused_field
  final $Res Function(StudentState) _then;

  @override
  $Res call({
    Object? studentList = freezed,
    Object? searchResultList = freezed,
    Object? isAvailable = freezed,
    Object? isSearching = freezed,
  }) {
    return _then(_value.copyWith(
      studentList: studentList == freezed
          ? _value.studentList
          : studentList // ignore: cast_nullable_to_non_nullable
              as List<StudentMod>,
      searchResultList: searchResultList == freezed
          ? _value.searchResultList
          : searchResultList // ignore: cast_nullable_to_non_nullable
              as List<StudentMod>,
      isAvailable: isAvailable == freezed
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearching: isSearching == freezed
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_StudentStateCopyWith<$Res>
    implements $StudentStateCopyWith<$Res> {
  factory _$$_StudentStateCopyWith(
          _$_StudentState value, $Res Function(_$_StudentState) then) =
      __$$_StudentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<StudentMod> studentList,
      List<StudentMod> searchResultList,
      bool isAvailable,
      bool isSearching});
}

/// @nodoc
class __$$_StudentStateCopyWithImpl<$Res>
    extends _$StudentStateCopyWithImpl<$Res>
    implements _$$_StudentStateCopyWith<$Res> {
  __$$_StudentStateCopyWithImpl(
      _$_StudentState _value, $Res Function(_$_StudentState) _then)
      : super(_value, (v) => _then(v as _$_StudentState));

  @override
  _$_StudentState get _value => super._value as _$_StudentState;

  @override
  $Res call({
    Object? studentList = freezed,
    Object? searchResultList = freezed,
    Object? isAvailable = freezed,
    Object? isSearching = freezed,
  }) {
    return _then(_$_StudentState(
      studentList: studentList == freezed
          ? _value._studentList
          : studentList // ignore: cast_nullable_to_non_nullable
              as List<StudentMod>,
      searchResultList: searchResultList == freezed
          ? _value._searchResultList
          : searchResultList // ignore: cast_nullable_to_non_nullable
              as List<StudentMod>,
      isAvailable: isAvailable == freezed
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearching: isSearching == freezed
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_StudentState implements _StudentState {
  const _$_StudentState(
      {required final List<StudentMod> studentList,
      required final List<StudentMod> searchResultList,
      required this.isAvailable,
      required this.isSearching})
      : _studentList = studentList,
        _searchResultList = searchResultList;

  final List<StudentMod> _studentList;
  @override
  List<StudentMod> get studentList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studentList);
  }

  final List<StudentMod> _searchResultList;
  @override
  List<StudentMod> get searchResultList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResultList);
  }

  @override
  final bool isAvailable;
  @override
  final bool isSearching;

  @override
  String toString() {
    return 'StudentState(studentList: $studentList, searchResultList: $searchResultList, isAvailable: $isAvailable, isSearching: $isSearching)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudentState &&
            const DeepCollectionEquality()
                .equals(other._studentList, _studentList) &&
            const DeepCollectionEquality()
                .equals(other._searchResultList, _searchResultList) &&
            const DeepCollectionEquality()
                .equals(other.isAvailable, isAvailable) &&
            const DeepCollectionEquality()
                .equals(other.isSearching, isSearching));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_studentList),
      const DeepCollectionEquality().hash(_searchResultList),
      const DeepCollectionEquality().hash(isAvailable),
      const DeepCollectionEquality().hash(isSearching));

  @JsonKey(ignore: true)
  @override
  _$$_StudentStateCopyWith<_$_StudentState> get copyWith =>
      __$$_StudentStateCopyWithImpl<_$_StudentState>(this, _$identity);
}

abstract class _StudentState implements StudentState {
  const factory _StudentState(
      {required final List<StudentMod> studentList,
      required final List<StudentMod> searchResultList,
      required final bool isAvailable,
      required final bool isSearching}) = _$_StudentState;

  @override
  List<StudentMod> get studentList => throw _privateConstructorUsedError;
  @override
  List<StudentMod> get searchResultList => throw _privateConstructorUsedError;
  @override
  bool get isAvailable => throw _privateConstructorUsedError;
  @override
  bool get isSearching => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StudentStateCopyWith<_$_StudentState> get copyWith =>
      throw _privateConstructorUsedError;
}
