import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:http/http.dart' as http;
import '../../data/models/result/Mid_result_model.dart';
import '../../libraries.dart';

abstract class MidResultController extends GetxController {
  addMidResult();
  editMidResult({required String id});
  deleteMidResult({required MidResultModel midResult});
  getEmp();
}

class MidResultControllerImp extends MidResultController {
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
  List<MidResultModel> midResultList = <MidResultModel>[].obs;
  MyService myService = Get.find();
  GlobalKey<FormState> editMidResultKey = GlobalKey<FormState>();
  GlobalKey<FormState> addMidResultKey = GlobalKey<FormState>();
  GlobalKey<FormState> deleteMidResultKey = GlobalKey<FormState>();

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
    midResultList.clear();
    isLoading(true);
    update();
    try {
      final response = await http.get(Uri.parse(Api.apiGetEmp));
      if (response.statusCode == 200) {
        final List<dynamic> decodedMessages = jsonDecode(response.body);
        midResultList.assignAll(decodedMessages
            .map((data) => MidResultModel.fromJson(data))
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
  addMidResult() async {
    var formData = addMidResultKey.currentState;
    if (formData!.validate()) {
      isLoading(true);
      update();
      try {
        socket!.emit(
          AppSockets.addMidResult,
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
  editMidResult({required String id}) async {
    var formData = editMidResultKey.currentState;
    if (formData!.validate()) {
      try {
        isLoading(true);
        update();
        socket!.emit(
          AppSockets.editMidResult,
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
  void deleteMidResult({required MidResultModel midResult}) {
    isLoading(true);
    update();
    try {
      socket!.emit(
        AppSockets.deleteMidResult,
        {
          'user': studentId,
          'id': midResult.studentId,
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
