import 'package:hive1/data/model/model.dart';

abstract class SearchRepo {
  List<StudentMod> searchStudent({required String searchHint});
}
