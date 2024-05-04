import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:http/http.dart' as http;
import 'package:universty/data/models/result/practical_result_model.dart';

import '../../libraries.dart';

abstract class PracticalResultController extends GetxController {
  addPracticalResult();
  editPracticalResult({required String id});
  deletePracticalResult({required PracticalResultModel practicalResult});
  getEmp();
}

class PracticalResultControllerImp extends PracticalResultController {
  io.Socket? socket;
  late TextEditingController studentId;
  late TextEditingController studentName;
  late TextEditingController courseId;
  late TextEditingController courseName;
  late TextEditingController courseScore;
  late TextEditingController semesterId;
  late TextEditingController level;
  late TextEditingController year;

  var isLoading = false.obs;
  var isShown = true.obs;
  List<PracticalResultModel> practicalResultList = <PracticalResultModel>[].obs;
  MyService myService = Get.find();
  GlobalKey<FormState> editPracticalResultKey = GlobalKey<FormState>();
  GlobalKey<FormState> addPracticalResultKey = GlobalKey<FormState>();
  GlobalKey<FormState> deletePracticalResultKey = GlobalKey<FormState>();

  @override
  onInit() async {
    studentName = TextEditingController();
    studentId = TextEditingController();
    semesterId = TextEditingController();
    level = TextEditingController();
    year = TextEditingController();
    courseId = TextEditingController();
    courseName = TextEditingController();
    courseScore = TextEditingController();
    getEmp();
    super.onInit();
  }

  @override
  void dispose() {
    studentName.dispose();
    studentId.dispose();
    semesterId.dispose();
    level.dispose();
    year.dispose();
    courseId.dispose();
    courseName.dispose();
    courseScore.dispose();
    super.dispose();
  }

  @override
  void getEmp() async {
    practicalResultList.clear();
    isLoading(true);
    update();
    try {
      final response = await http.get(Uri.parse(Api.apiGetEmp));
      if (response.statusCode == 200) {
        final List<dynamic> decodedMessages = jsonDecode(response.body);
        practicalResultList.assignAll(decodedMessages
            .map((data) => PracticalResultModel.fromJson(data))
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
  addPracticalResult() async {
    var formData = addPracticalResultKey.currentState;
    if (formData!.validate()) {
      isLoading(true);
      update();
      try {
        socket!.emit(
          AppSockets.addPracticalResult,
          {
            'user': studentId,
            'data': {
              "name": studentName,
              "course_id": courseId,
              "course_name": courseName,
              "course_score": courseScore,
              "semester_id": semesterId,
              "level": level,
              "year": year,
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
  editPracticalResult({required String id}) async {
    var formData = editPracticalResultKey.currentState;
    if (formData!.validate()) {
      try {
        isLoading(true);
        update();
        socket!.emit(
          AppSockets.editPracticalResult,
          {
            'user': studentId,
            'id': id,
            'newData': {
              "name": studentName,
              "course_id": courseId,
              "course_name": courseName,
              "course_score": courseScore,
              "semester_id": semesterId,
              "level": level,
              "year": year,
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
  void deletePracticalResult({required PracticalResultModel practicalResult}) {
    isLoading(true);
    update();
    try {
      socket!.emit(
        AppSockets.deletePracticalResult,
        {
          'user': studentId,
          'id': practicalResult.studentId,
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
