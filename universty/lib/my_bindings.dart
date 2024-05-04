import 'package:universty/controllers/courses/courses_controller.dart';

import 'controllers/department/department_controller.dart';
import 'controllers/emp/emp_controller.dart';
import 'controllers/ip/ip_controller.dart';
import 'controllers/students/students_controller.dart';
import 'libraries.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(IpAddressControllerImp());
    Get.put(EmpControllerImp());
    Get.put(DepartmentControllerImp());
    Get.put(StudentControllerImp());
    Get.put(CourseControllerImp());
  }
}
