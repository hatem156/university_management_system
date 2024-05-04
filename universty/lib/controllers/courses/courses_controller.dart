import 'package:socket_io_client/socket_io_client.dart' as io;
import '../emp/emp_controller.dart';
import '/data/models/Course/course_model.dart';
import 'package:http/http.dart' as http;
import '../../libraries.dart';

abstract class CourseController extends GetxController {
  addCourse();
  editCourse({required String id});
  deleteCourse({required CourseModel course});
  getCourse();
}

class CourseControllerImp extends CourseController {
  io.Socket? socket;
  late TextEditingController courseId;
  late TextEditingController courseName;
  late TextEditingController doctorName;
  late TextEditingController numOfStudents;
  late TextEditingController semester;
  late TextEditingController department;
  late TextEditingController level;
  late TextEditingController image;

  var isLoading = false.obs;
  var isShown = true.obs;
  List<CourseModel> courseList = <CourseModel>[].obs;
  MyService myService = Get.find();
  GlobalKey<FormState> editCourseKey = GlobalKey<FormState>();
  GlobalKey<FormState> addCourseKey = GlobalKey<FormState>();
  GlobalKey<FormState> deleteCourseKey = GlobalKey<FormState>();

  @override
  onInit() async {
    connectToServer();
    courseName = TextEditingController();
    doctorName = TextEditingController();
    numOfStudents = TextEditingController();
    semester = TextEditingController();
    department = TextEditingController();
    level = TextEditingController();
    image = TextEditingController();
    getCourse();
    super.onInit();
  }

  @override
  void dispose() {
    courseName.dispose();
    doctorName.dispose();
    numOfStudents.dispose();
    semester.dispose();
    department.dispose();
    level.dispose();
    image.dispose();
    super.dispose();
  }

  void connectToServer() {
    socket = io.io(Api.baseUrl, <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });
    socket!.on(
      AppSockets.addCourseResponse,
      (data) {
        getCourse();
        if (data['user'] == EmpControllerImp.empId) {
          MySnackBar.snack(AppStrings.done.tr, '');
        }
      },
    );
    socket!.on(
      AppSockets.deleteCourseResponse,
      (data) {
        getCourse();
        if (data['user'] == EmpControllerImp.empId) {
          MySnackBar.snack(AppStrings.done.tr, '');
        }
      },
    );
    socket!.on(
      AppSockets.editCourseResponse,
      (data) {
        getCourse();
        if (data['user'] == EmpControllerImp.empId) {
          MySnackBar.snack(AppStrings.done.tr, '');
        }
      },
    );
    socket!.connect();
  }

  @override
  void getCourse() async {
    courseList.clear();
    isLoading(true);
    update();
    try {
      final response = await http.get(Uri.parse(Api.apiViewCourse));
      if (response.statusCode == 200) {
        final List<dynamic> decodedMessages = jsonDecode(response.body);
        courseList.assignAll(
            decodedMessages.map((data) => CourseModel.fromJson(data)).toList());

        isLoading(false);
        update();
      }
    } catch (_) {
      isLoading(false);
      update();
    }
    isLoading(false);
    update();
  }

  @override
  addCourse() async {
    var formData = addCourseKey.currentState;
    if (formData!.validate()) {
      isLoading(true);
      update();
      try {
        socket!.emit(
          AppSockets.addCourse,
          {
            'user': EmpControllerImp.empId,
            'data': {
              "course_name": courseName.text,
              "doctor_name": doctorName.text,
              "num_of_students": numOfStudents.text,
              "semester": semester.text,
              "department": department.text,
              "level": level.text,
              "image": image.text,
            }
          },
        );
      } catch (_) {
        isLoading(false);
        update();
      }
    }
  }

  @override
  editCourse({required String id}) async {
    var formData = editCourseKey.currentState;
    if (formData!.validate()) {
      try {
        isLoading(true);
        update();
        socket!.emit(
          AppSockets.editCourse,
          {
            'user': EmpControllerImp.empId,
            'id': id,
            'newData': {
              "course_name": courseName.text,
              "doctor_name": doctorName.text,
              "num_of_students": numOfStudents.text,
              "semester": semester.text,
              "department": department.text,
              "level": level.text,
              "image": image.text,
            },
          },
        );
      } catch (_) {
        isLoading(false);
        update();
      }
      isLoading(false);
      update();
    }
  }

  @override
  void deleteCourse({required CourseModel course}) {
    isLoading(true);
    update();
    try {
      socket!.emit(
        AppSockets.deleteCourse,
        {
          'user': EmpControllerImp.empId,
          'id': course.id,
        },
      );
    } catch (_) {
      isLoading(false);
      update();
    }
    isLoading(false);
    update();
  }

  prepareEditCourseScreen({required CourseModel course}) {
    courseName.text = course.courseName;
    doctorName.text = course.doctorName;
    numOfStudents.text = course.numOfStudents;
    semester.text = course.semester;
    department.text = course.department;
    level.text = course.level;
    image.text = course.image;
  }
}
