import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:http/http.dart' as http;
import 'package:universty/data/models/fees/fees_model.dart';
import '../../libraries.dart';

abstract class FeesController extends GetxController {
  addFees();
  editFees({required String id});
  deleteFees({required FeesModel fees});
  getFees();
}

class FeesControllerImp extends FeesController {
  io.Socket? socket;
  late TextEditingController studentId;
  late TextEditingController studentName;
  late TextEditingController semester;
  late TextEditingController status;

  var isLoading = false.obs;
  var isShown = true.obs;
  List<FeesModel> feesList = <FeesModel>[].obs;
  MyService myService = Get.find();
  GlobalKey<FormState> editFeesKey = GlobalKey<FormState>();
  GlobalKey<FormState> addFeesKey = GlobalKey<FormState>();
  GlobalKey<FormState> deleteFeesKey = GlobalKey<FormState>();

  @override
  onInit() async {
    studentId = TextEditingController();
    studentName = TextEditingController();
    semester = TextEditingController();
    status = TextEditingController();

    getFees();
    super.onInit();
  }

  @override
  void dispose() {
    studentName.dispose();
    studentId.dispose();
    semester.dispose();
    status.dispose();
    super.dispose();
  }

  @override
  void getFees() async {
    feesList.clear();
    isLoading(true);
    update();
    try {
      final response = await http.get(Uri.parse(Api.apiViewtFees));
      if (response.statusCode == 200) {
        final List<dynamic> decodedMessages = jsonDecode(response.body);
        feesList.assignAll(
            decodedMessages.map((data) => FeesModel.fromJson(data)).toList());

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
  addFees() async {
    var formData = addFeesKey.currentState;
    if (formData!.validate()) {
      isLoading(true);
      update();
      try {
        socket!.emit(
          AppSockets.addFees,
          {
            'user': studentId,
            'data': {
              "student_name": studentName,
              "semester": semester,
              "status": status,
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
  editFees({required String id}) async {
    var formData = editFeesKey.currentState;
    if (formData!.validate()) {
      try {
        isLoading(true);
        update();
        socket!.emit(
          AppSockets.editFees,
          {
            'user': studentId,
            'id': id,
            'newData': {
              "student_name": studentName,
              "semester": semester,
              "status": status,
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
  void deleteFees({required FeesModel fees}) {
    isLoading(true);
    update();
    try {
      socket!.emit(
        AppSockets.deleteFees,
        {
          'user': studentId,
          'id': fees.id,
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
