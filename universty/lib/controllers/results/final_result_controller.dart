import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:http/http.dart' as http;
import '../../data/models/result/final_result_model.dart';
import '../../libraries.dart';

abstract class FinalResultController extends GetxController {
  addFinalResult();
  editFinalResult({required String id});
  deleteFinalResult({required FinalResultModel finalResult});
  getEmp();
}

class FinalResultControllerImp extends FinalResultController {
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
  List<FinalResultModel> finalResultList = <FinalResultModel>[].obs;
  MyService myService = Get.find();
  GlobalKey<FormState> editFinalResultKey = GlobalKey<FormState>();
  GlobalKey<FormState> addFinalResultKey = GlobalKey<FormState>();
  GlobalKey<FormState> deleteFinalResultKey = GlobalKey<FormState>();

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
    finalResultList.clear();
    isLoading(true);
    update();
    try {
      final response = await http.get(Uri.parse(Api.apiGetEmp));
      if (response.statusCode == 200) {
        final List<dynamic> decodedMessages = jsonDecode(response.body);
        finalResultList.assignAll(decodedMessages
            .map((data) => FinalResultModel.fromJson(data))
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
  addFinalResult() async {
    var formData = addFinalResultKey.currentState;
    if (formData!.validate()) {
      isLoading(true);
      update();
      try {
        socket!.emit(
          AppSockets.addfinalResult,
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
  editFinalResult({required String id}) async {
    var formData = editFinalResultKey.currentState;
    if (formData!.validate()) {
      try {
        isLoading(true);
        update();
        socket!.emit(
          AppSockets.editfinalResult,
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
  void deleteFinalResult({required FinalResultModel finalResult}) {
    isLoading(true);
    update();
    try {
      socket!.emit(
        AppSockets.deletefinalResult,
        {
          'user': studentId,
          'id': finalResult.studentId,
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
