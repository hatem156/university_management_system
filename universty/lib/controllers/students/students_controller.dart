import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:universty/controllers/emp/emp_controller.dart';

import '../../data/models/students/students_model.dart';
import '../../libraries.dart';
import 'package:http/http.dart' as http;

abstract class StudentController extends GetxController {
  addStudent();
  editStudent({required String id});
  deleteStudent({required StudentModel student});
  getStudent();
}

class StudentControllerImp extends StudentController {
  io.Socket? socket;
  late TextEditingController studentId;
  late TextEditingController studentName;
  late TextEditingController age;
  late TextEditingController userName;
  late TextEditingController password;
  late TextEditingController email;
  late TextEditingController department;
  late TextEditingController gender;
  late TextEditingController phoneNumber;
  late TextEditingController code;
  late TextEditingController level;
  late TextEditingController image;
  late TextEditingController status;

  var isLoading = false.obs;
  var isShown = true.obs;

  List<StudentModel> studentList = <StudentModel>[].obs;
  MyService myService = Get.find();
  GlobalKey<FormState> editStudentKey = GlobalKey<FormState>();
  GlobalKey<FormState> addStudentKey = GlobalKey<FormState>();

  @override
  onInit() async {
    connectToServer();
    studentId = TextEditingController();
    studentName = TextEditingController();
    age = TextEditingController();
    userName = TextEditingController();
    password = TextEditingController();
    email = TextEditingController();
    department = TextEditingController();
    gender = TextEditingController();
    phoneNumber = TextEditingController();
    code = TextEditingController();
    level = TextEditingController();
    image = TextEditingController();
    status = TextEditingController();
    getStudent();
    super.onInit();
  }

  @override
  void dispose() {
    studentId.dispose();
    studentName.dispose();
    age.dispose();
    userName.dispose();
    password.dispose();
    email.dispose();
    department.dispose();
    gender.dispose();
    phoneNumber.dispose();
    code.dispose();
    level.dispose();
    image.dispose();
    status.dispose();
    super.dispose();
  }

  void connectToServer() {
    socket = io.io(Api.baseUrl, <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });
    socket!.on(
      AppSockets.addStudentResponse,
      (data) {
        getStudent();
        if (data['user'] == EmpControllerImp.empId) {
          MySnackBar.snack(AppStrings.done.tr, '');
        }
      },
    );
    socket!.on(
      AppSockets.deleteStudentResponse,
      (data) {
        getStudent();
        if (data['user'] == EmpControllerImp.empId) {
          MySnackBar.snack(AppStrings.done.tr, '');
        }
      },
    );
    socket!.on(
      AppSockets.editStudentResponse,
      (data) {
        getStudent();
        if (data['user'] == EmpControllerImp.empId) {
          MySnackBar.snack(AppStrings.done.tr, '');
        }
      },
    );
    socket!.connect();
  }

  @override
  void getStudent() async {
    studentList.clear();
    isLoading(true);
    update();
    try {
      final response = await http.get(Uri.parse(Api.apiViewStudents));
      if (response.statusCode == 200) {
        final List<dynamic> decodedMessages = jsonDecode(response.body);
        studentList.assignAll(decodedMessages
            .map((data) => StudentModel.fromJson(data))
            .toList());

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
  addStudent() async {
    var formData = addStudentKey.currentState;
    if (formData!.validate()) {
      isLoading(true);
      update();
      try {
        socket!.emit(
          AppSockets.addStudent,
          {
            'user': EmpControllerImp.empId,
            'data': {
              "name": studentName.text,
              "age": age.text,
              "user_name": userName.text,
              "password": password.text,
              "email": email.text,
              "department": department.text,
              "gender": gender.text,
              "phone_number": phoneNumber.text,
              "code": code.text,
              "level": level.text,
              "image": image.text,
              "status": status.text,
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
  editStudent({required String id}) async {
    var formData = editStudentKey.currentState;
    if (formData!.validate()) {
      try {
        isLoading(true);
        update();
        socket!.emit(
          AppSockets.editStudent,
          {
            'user': EmpControllerImp.empId,
            'data': {
              "name": studentName.text,
              "age": age.text,
              "user_name": userName.text,
              "password": password.text,
              "email": email.text,
              "department": department.text,
              "gender": gender.text,
              "phone_number": phoneNumber.text,
              "code": code.text,
              "level": level.text,
              "image": image.text,
              "status": status.text,
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
  void deleteStudent({required StudentModel student}) {
    isLoading(true);
    update();
    try {
      socket!.emit(
        AppSockets.deleteStudent,
        {
          'user': EmpControllerImp.empId,
          'id': student.studentId,
        },
      );
    } catch (_) {
      isLoading(false);
      update();
    }
    isLoading(false);
    update();
  }

  prepareEditStudentScreen({required StudentModel stu}) {
    studentName.text = stu.studentName;
    age.text = stu.age;
    userName.text = stu.userName;
    password.text = stu.password;
    email.text = stu.email;
    department.text = stu.department;
    gender.text = stu.gender;
    phoneNumber.text = stu.phoneNumber;
    code.text = stu.code;
    level.text = stu.level;
    image.text = stu.image;
    status.text = stu.status;
  }
}
