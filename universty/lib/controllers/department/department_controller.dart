import 'package:socket_io_client/socket_io_client.dart' as io;
import '../emp/emp_controller.dart';
import '/data/models/department/department_model.dart';
import 'package:http/http.dart' as http;

import '../../libraries.dart';

abstract class DepartmentController extends GetxController {
  adddepartment();
  editdepartment({required String id});
  deletedepartment({required DepartmentModel department});
  getDepartment();
}

class DepartmentControllerImp extends DepartmentController {
  io.Socket? socket;
  late TextEditingController departmentId;
  late TextEditingController departmentName;
  late TextEditingController numOfStudents;
  late TextEditingController image;
  late TextEditingController timeTable;
  late TextEditingController mangerId;
  late TextEditingController mangerName;

  var isLoading = false.obs;
  var isShown = true.obs;
  List<DepartmentModel> departmentList = <DepartmentModel>[].obs;
  MyService myService = Get.find();
  GlobalKey<FormState> editdepartmentKey = GlobalKey<FormState>();
  GlobalKey<FormState> adddepartmentKey = GlobalKey<FormState>();

  @override
  onInit() async {
    connectToServer();
    departmentName = TextEditingController();
    departmentId = TextEditingController();
    numOfStudents = TextEditingController();
    image = TextEditingController();
    timeTable = TextEditingController();
    mangerId = TextEditingController();
    mangerName = TextEditingController();
    getDepartment();
    super.onInit();
  }

  @override
  void dispose() {
    departmentName.dispose();
    departmentId.dispose();
    numOfStudents.dispose();
    image.dispose();
    timeTable.dispose();
    mangerId.dispose();
    mangerName.dispose();
    super.dispose();
  }

  void connectToServer() {
    socket = io.io(Api.baseUrl, <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });
    socket!.on(
      AppSockets.addDepartmentResponse,
      (data) {
        getDepartment();
        if (data['user'] == EmpControllerImp.empId) {
          MySnackBar.snack(AppStrings.done.tr, '');
        }
      },
    );
    socket!.on(
      AppSockets.deleteDepartmentResponse,
      (data) {
        getDepartment();
        if (data['user'] == EmpControllerImp.empId) {
          MySnackBar.snack(AppStrings.done.tr, '');
        }
      },
    );
    socket!.on(
      AppSockets.editDepartmentResponse,
      (data) {
        getDepartment();
        if (data['user'] == EmpControllerImp.empId) {
          MySnackBar.snack(AppStrings.done.tr, '');
        }
      },
    );
    socket!.connect();
  }

  @override
  void getDepartment() async {
    departmentList.clear();
    isLoading(true);
    update();
    try {
      final response = await http.get(Uri.parse(Api.apiViewDepartment));
      if (response.statusCode == 200) {
        final List<dynamic> decodedMessages = jsonDecode(response.body);
        departmentList.assignAll(decodedMessages
            .map((data) => DepartmentModel.fromJson(data))
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
  adddepartment() async {
    var formData = adddepartmentKey.currentState;
    if (formData!.validate()) {
      isLoading(true);
      update();
      // try {
      socket!.emit(
        AppSockets.addDepartment,
        {
          'user': EmpControllerImp.empId,
          'data': {
            "name": departmentName.text,
            "num_of_students": numOfStudents.text,
            "image": image.text,
            "time_table": timeTable.text,
            "manger_id": mangerId.text,
            "manger_name": mangerName.text,
          }
        },
      );
      // } catch (_) {
      //   isLoading(false);
      //   update();
      // }
    }
  }

  @override
  editdepartment({required String id}) async {
    try {
      isLoading(true);
      update();
      socket!.emit(
        AppSockets.editDepartment,
        {
          'user': EmpControllerImp.empId,
          'id': id,
          'newData': {
            "name": departmentName.text,
            "num_of_students": numOfStudents.text,
            "image": image.text,
            "time_table": timeTable.text,
            "manger_id": mangerId.text,
            "manger_name": mangerName.text,
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

  @override
  void deletedepartment({required DepartmentModel department}) {
    isLoading(true);
    update();
    try {
      socket!.emit(
        AppSockets.deleteDepartment,
        {
          'user': EmpControllerImp.empId,
          'id': department.id,
        },
      );
    } catch (_) {
      isLoading(false);
      update();
    }
    isLoading(false);
    update();
  }

  prepareEditScreen({required DepartmentModel dep}) {
    departmentName.text = dep.name;
    numOfStudents.text = dep.numOfStudents;
    mangerId.text = dep.mangerId;
    mangerName.text = dep.mangerName;
  }
}
