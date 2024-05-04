import 'package:socket_io_client/socket_io_client.dart' as io;

import '../../data/models/attendence/attendence_model.dart';
import '../../libraries.dart';
import 'package:http/http.dart' as http;

abstract class AttendenceController extends GetxController {
  addattendence();
  editattendence({required String id});
  deleteattendence({required AttendenceModel attendence});
  getAttendence();
}

class AttendenceControllerImp extends AttendenceController {
  io.Socket? socket;
  late TextEditingController attendenceId;
  late TextEditingController studentName;
  late TextEditingController courseName;
  late TextEditingController department;
  late TextEditingController semester;
  late TextEditingController code;
  late TextEditingController date;
  late TextEditingController attend;

  var newAccount = 0.0.obs;
  var isLoading = false.obs;
  var isShown = true.obs;

  List<AttendenceModel> attendenceList = <AttendenceModel>[].obs;

  MyService myService = Get.find();
  GlobalKey<FormState> editattendenceKey = GlobalKey<FormState>();
  GlobalKey<FormState> addattendenceKey = GlobalKey<FormState>();

  @override
  onInit() async {
    attendenceId = TextEditingController();
    studentName = TextEditingController();
    courseName = TextEditingController();
    department = TextEditingController();
    semester = TextEditingController();
    code = TextEditingController();
    date = TextEditingController();
    attend = TextEditingController();
    getAttendence();
    super.onInit();
  }

  @override
  void dispose() {
    attendenceId.dispose();
    studentName.dispose();
    courseName.dispose();
    department.dispose();
    semester.dispose();
    code.dispose();
    date.dispose();
    attend.dispose();
    super.dispose();
  }

  @override
  void getAttendence() async {
    attendenceList.clear();
    isLoading(true);
    update();
    try {
      final response = await http.get(Uri.parse(Api.apiViewttAendence));
      if (response.statusCode == 200) {
        final List<dynamic> decodedMessages = jsonDecode(response.body);
        attendenceList.assignAll(decodedMessages
            .map((data) => AttendenceModel.fromJson(data))
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
  addattendence() async {
    var formData = addattendenceKey.currentState;
    if (formData!.validate()) {
      isLoading(true);
      update();
      try {
        socket!.emit(
          AppSockets.addAttendence,
          {
            'user': attendenceId,
            'data': {
              "id": attendenceId.text,
              "name": studentName.text,
              "course_name": courseName.text,
              "department": department.text,
              "semester": semester.text,
              "code": code.value,
              "date": date.text,
              "attend": attend.text,
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
  editattendence({required String id}) async {
    var formData = editattendenceKey.currentState;
    if (formData!.validate()) {
      try {
        isLoading(true);
        update();
        socket!.emit(
          AppSockets.editAttendence,
          {
            'user': attendenceId,
            'data': {
              "id": attendenceId.text,
              "name": studentName.text,
              "course_name": courseName.text,
              "department": department.text,
              "semester": semester.text,
              "code": code.value,
              "date": date.text,
              "attend": attend.text,
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
  void deleteattendence({required AttendenceModel attendence}) {
    isLoading(true);
    update();
    try {
      socket!.emit(
        AppSockets.deleteAttendence,
        {
          'user': attendenceId,
          'id': attendence.id,
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
