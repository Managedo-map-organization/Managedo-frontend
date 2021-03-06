import '../../app/dependencies.dart';
import '../../models/student.dart';
import '../rest_service.dart';
import './student_service.dart';

class StudentServiceRest implements StudentService {
  final rest = dependency<RestService>();

  @override
  Future<Student> getStudent(int id) async {
    final studentJson = await rest.get('students/$id');
    final listJsonUser = await rest.get('users/fkStudentId/$id');

    return studentJson != null || listJsonUser != null
        ? Student.fromJson(studentJson, listJsonUser[0])
        : null;
  }
}
