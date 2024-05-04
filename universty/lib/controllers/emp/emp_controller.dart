import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

import '../../data/models/emp/emp_model.dart';
import '../../libraries.dart';

abstract class EmpController extends GetxController {
  getEmp();
  addEmp();
  editEmp({required String id});
  deleteEmp({required EmpModel emp});
  void search({required String searchName});
}

class EmpControllerImp extends EmpController {
  io.Socket? socket;
  late TextEditingController empNameTextField;
  late TextEditingController tel1;
  late TextEditingController tel2;
  late TextEditingController searchTextField;
  late TextEditingController userName;
  late TextEditingController address;
  late TextEditingController percent;
  late TextEditingController userPassword;
  var youKnowUs = ''.obs;
  var newAccount = 0.0.obs;
  var isLoading = false.obs;
  var isShown = true.obs;
  var selectedPrimison = ''.obs;
  static String? empId = '';
  static String? empName = '';
  static int? userKind = 0;
  final List<DropdownMenuEntry<EmpModel>> empMenu =
      <DropdownMenuEntry<EmpModel>>[];
  final List<DropdownMenuEntry<EmpModel>> doctorsMenu =
      <DropdownMenuEntry<EmpModel>>[];
  var selectedEmpName = ''.obs;
  var selectedEmpId = ''.obs;
  var formatter = DateFormat('yyyy-MM-dd');
  var dateStartValue = ''.obs;
  var dateStart = ''.obs;
  var dateEnd = ''.obs;
  var toDay = ''.obs;
  var timeFormatter = DateFormat.jms();
  var timeFormatterAr = DateFormat.jms('ar');
  var dayFormatterAr = DateFormat.yMMMMEEEEd('ar');
  List<EmpModel> searchEmpList = <EmpModel>[].obs;
  List<EmpModel> allWorkersList = <EmpModel>[].obs;
  List<EmpModel> doctorsList = <EmpModel>[].obs;
  List<EmpModel> empList = <EmpModel>[].obs;
  List<EmpModel> loginList = <EmpModel>[].obs;
  MyService myService = Get.find();
  GlobalKey<FormState> editEmpKey = GlobalKey<FormState>();
  GlobalKey<FormState> addEmpKey = GlobalKey<FormState>();
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  List<EmpModel> activeUsers = <EmpModel>[].obs;
  var selectedPresmision = ''.obs;
  var presmisionKind = 0.obs;

  var selectedDoctor = EmpModel(
    empId: 0,
    empName: 'empName',
    userName: 'userName',
    userPassword: 'userPassword',
    kind: 0,
    empTel1: 'empTel1',
    empTel2: 'empTel2',
    empBirth: DateTime.now(),
    empNatid: 'empNatid',
    empAddress: 'empAddress',
    empJop: 'empJop',
    empStopped: 0,
    empSal: 0,
    percent: '0',
    empDays: 0,
  ).obs;
  var selectedEmp = EmpModel(
    empId: 0,
    empName: 'empName',
    userName: 'userName',
    userPassword: 'userPassword',
    kind: 0,
    empTel1: 'empTel1',
    empTel2: 'empTel2',
    empBirth: DateTime.now(),
    empNatid: 'empNatid',
    empAddress: 'empAddress',
    empJop: 'empJop',
    empStopped: 0,
    empSal: 0,
    percent: '0',
    empDays: 0,
  ).obs;
  var currentEmp = EmpModel(
    empId: 0,
    empName: 'empName',
    userName: 'userName',
    userPassword: 'userPassword',
    kind: 0,
    empTel1: 'empTel1',
    empTel2: 'empTel2',
    empBirth: DateTime.now(),
    empNatid: 'empNatid',
    empAddress: 'empAddress',
    empJop: 'empJop',
    empStopped: 0,
    empSal: 0,
    percent: '0',
    empDays: 0,
  ).obs;

  @override
  onInit() async {
    empNameTextField = TextEditingController();
    tel1 = TextEditingController();
    tel2 = TextEditingController();
    address = TextEditingController();
    searchTextField = TextEditingController();
    userName = TextEditingController();
    userPassword = TextEditingController();
    percent = TextEditingController();
    empName = myService.sharedPreferences.getString(AppStrings.keyUserName);
    userKind = myService.sharedPreferences.getInt(AppStrings.adminKey);
    empId = myService.sharedPreferences.getString(AppStrings.keyUserId);
    connectToServer();
    getEmp();

    super.onInit();
  }

  @override
  void dispose() {
    empNameTextField.dispose();
    tel1.dispose();
    tel2.dispose();
    userPassword.dispose();
    address.dispose();
    searchTextField.dispose();
    percent.dispose();
    userName.dispose();
    socket!.emit('logout', empId);
    super.dispose();
  }

  void connectToServer() {
    socket = io.io(Api.baseUrl, <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });
    socket!.on(
      AppSockets.activeUsers,
      (data) {
        List active = List.from(data);
        updateActiveList(active: active);
      },
    );
    socket!.emit('login', empId);
    socket!.on(
      AppSockets.addEmpResponse,
      (data) {
        getEmp();
        if (data['user'] == empId) {
          MySnackBar.snack(AppStrings.done.tr, '');
        }
      },
    );
    socket!.on(
      AppSockets.deleteEmpResponse,
      (data) {
        getEmp();
        if (data['user'] == empId) {
          MySnackBar.snack(AppStrings.done.tr, '');
        }
      },
    );
    socket!.on(
      AppSockets.editEmpResponse,
      (data) {
        getEmp();
        if (data['user'] == empId) {
          MySnackBar.snack(AppStrings.done.tr, '');
        }
      },
    );
    socket!.connect();
  }

  updateActiveList({required List active}) {
    isLoading(true);
    update();
    activeUsers.clear();
    for (int i = 0; i < active.length; i++) {
      activeUsers.addAll(allWorkersList
          .where((emp) => emp.empId.toString() == active[i].toString())
          .toList());
    }
    isLoading(false);
    update();
  }

  @override
  void getEmp() async {
    allWorkersList.clear();
    searchEmpList.clear();
    isLoading(true);
    update();
    try {
      final response = await http.get(Uri.parse(Api.apiGetEmp));
      if (response.statusCode == 200) {
        final List<dynamic> decodedMessages = jsonDecode(response.body);
        allWorkersList.assignAll(
            decodedMessages.map((data) => EmpModel.fromJson(data)).toList());
        currentEmp.value = allWorkersList.firstWhere(
          (emp) => emp.empId == int.parse(empId!),
        );
        await preparaEmpMenu();
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

  preparaEmpMenu() {
    empList.clear();
    empList = allWorkersList.where((emp) => emp.kind != 2).toList();
    doctorsList.clear();
    doctorsList = allWorkersList.where((emp) => emp.kind == 2).toList();
    doctorsMenu.clear();
    for (int i = 0; i < doctorsList.length; i++) {
      doctorsMenu.add(
        DropdownMenuEntry<EmpModel>(
          value: doctorsList[i],
          label: doctorsList[i].empName,
        ),
      );
    }
    empMenu.clear();
    for (int i = 0; i < allWorkersList.length; i++) {
      empMenu.add(
        DropdownMenuEntry<EmpModel>(
          value: allWorkersList[i],
          label: allWorkersList[i].empName,
        ),
      );
    }
  }

  showPassword() {
    isShown.value = !isShown.value;
    update();
  }

  void getLogin({required String userName}) async {
    loginList.clear();
    loginList.add(allWorkersList.firstWhere((emp) => emp.userName == userName));
  }

  login() async {
    var formData = loginKey.currentState;
    if (formData!.validate()) {
      try {
        getLogin(userName: userName.text);
        if (loginList.isNotEmpty) {
          if (loginList[0].userPassword != userPassword.text) {
            MySnackBar.snack('', AppStrings.wrongPassword.tr);
            isLoading(false);
            update();
          } else {
            MySnackBar.snack(AppStrings.sucLogIn.tr, '');
            myService.sharedPreferences
                .setInt(AppStrings.adminKey, loginList[0].kind);
            userKind = loginList[0].kind;
            myService.sharedPreferences
                .setString(AppStrings.keyUserName, loginList[0].empName);
            empName = loginList[0].empName;
            myService.sharedPreferences
                .setString(AppStrings.keyUserId, loginList[0].empId.toString());
            empId = loginList[0].empId.toString();
            currentEmp.value = loginList[0];
            socket!.emit('login', empId);
            // attend(emp: loginList[0]);
            isLoading(false);
            userName.clear();
            userPassword.clear();
            loginList.clear();
            update();
            Get.offNamed(AppRoutes.mainScreen);
          }
        } else {
          MySnackBar.snack(AppStrings.userNotFound.tr, '');
          isLoading(false);
          update();
        }
      } catch (_) {
        isLoading(false);
        update();
      }
    }
  }

  logOut() {
    isLoading(true);
    myService.sharedPreferences.setInt(AppStrings.adminKey, 0);
    myService.sharedPreferences.setString(AppStrings.keyUserName, '');
    socket!.emit('logout', empId);
    // exit(empId: empId!);
    userName.clear();
    userPassword.clear();
    loginList.clear();
    Get.offNamed(AppRoutes.loginScreen);
    isLoading(false);
  }

  clearEmpItem() {
    selectedDoctor.value = EmpModel(
      empId: 0,
      empName: 'empName',
      userName: 'userName',
      userPassword: 'userPassword',
      kind: 0,
      empTel1: 'empTel1',
      empTel2: 'empTel2',
      empBirth: DateTime.now(),
      empNatid: 'empNatid',
      empAddress: 'empAddress',
      empJop: 'empJop',
      empStopped: 0,
      empSal: 0,
      percent: '0',
      empDays: 0,
    );
    selectedEmp.value = EmpModel(
      empId: 0,
      empName: 'empName',
      userName: 'userName',
      userPassword: 'userPassword',
      kind: 0,
      empTel1: 'empTel1',
      empTel2: 'empTel2',
      empBirth: DateTime.now(),
      empNatid: 'empNatid',
      empAddress: 'empAddress',
      empJop: 'empJop',
      empStopped: 0,
      empSal: 0,
      percent: '0',
      empDays: 0,
    );
  }

  @override
  addEmp() async {
    var formData = addEmpKey.currentState;
    if (formData!.validate()) {
      selectePresmision();
      isLoading(true);
      update();
      try {
        socket!.emit(
          AppSockets.addEmp,
          {
            'user': empId,
            'data': {
              "emp_name": empNameTextField.text,
              "user_name": userName.text,
              "user_password": userPassword.text,
              "kind": presmisionKind.value,
              "emp_tel1": tel1.text,
              "emp_tel2": tel2.text,
              "emp_address": address.text,
              "percent": percent.text,
              // "emp_natid": 'empNatid',
              // "emp_jop": 'empJop',
              // "emp_stopped": 'empStopped',
              // "emp_sal": 'empSal',

              // "emp_days": 'empDays',
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
  editEmp({required String id}) async {
    var formData = editEmpKey.currentState;
    if (formData!.validate()) {
      try {
        selectePresmision();
        isLoading(true);
        update();
        socket!.emit(
          AppSockets.editEmp,
          {
            'user': empId,
            'id': id,
            'newData': {
              "emp_name": empNameTextField.text,
              "user_name": userName.text,
              "user_password": userPassword.text,
              "kind": presmisionKind.value,
              "emp_tel1": tel1.text,
              "emp_tel2": tel2.text,
              "emp_address": address.text,
              "percent": percent.text,
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
  void search({required String searchName}) {
    isLoading(true);
    searchEmpList = allWorkersList
        .where(
          (emp) {
            var supName = emp.empName;
            var supId = emp.empId.toString();
            var supTel = emp.empTel1;
            var wts = emp.empTel2;
            var place = emp.empJop;
            return supName.contains(searchName) ||
                supId.contains(searchName) ||
                supTel.contains(searchName) ||
                wts.contains(searchName) ||
                place.contains(searchName);
          },
        )
        .toList()
        .reversed
        .toList();
    isLoading(false);
    update();
  }

  @override
  void deleteEmp({required EmpModel emp}) {
    isLoading(true);
    update();
    try {
      socket!.emit(
        AppSockets.deleteEmp,
        {
          'user': empId,
          'id': emp.empId,
        },
      );
    } catch (_) {
      isLoading(false);
      update();
    }
    isLoading(false);
    update();
  }

  prepareEditScreen({required EmpModel emp}) {
    empNameTextField.text = emp.empName;
    tel1.text = emp.empTel1;
    tel2.text = emp.empTel2;
    userPassword.text = emp.userPassword;
    address.text = emp.empAddress;
    userName.text = emp.userName;
    percent.text = emp.percent;
    prepareSelectedPresmision(kind: emp.kind);
  }

  prepareSelectedPresmision({required int kind}) {
    switch (kind) {
      case 0:
        selectedPresmision.value = AppStrings.noPrimsion.tr;
        break;
      case 1:
        selectedPresmision.value = AppStrings.manger.tr;
        break;
      case 2:
        selectedPresmision.value = AppStrings.supManger.tr;
        break;
      case 3:
        selectedPresmision.value = AppStrings.employ.tr;
        break;
    }
  }

  selectePresmision() {
    switch (selectedPresmision.value) {
      case AppStrings.noPrimsion:
        presmisionKind.value = 0;
        break;
      case AppStrings.manger:
        presmisionKind.value = 1;
        break;
      case AppStrings.supManger:
        presmisionKind.value = 2;
        break;
      case AppStrings.employ:
        presmisionKind.value = 3;
        break;
    }
  }

  prepareAddScreen() {
    youKnowUs.value = '';
    userPassword.clear();
    empNameTextField.clear();
    tel1.clear();
    tel2.clear();
    address.clear();
    percent.clear();
    userName.clear();
  }

  String convertMinutesToHoures({required int minutes}) {
    var d = Duration(minutes: minutes);
    List<String> parts = d.toString().split(':');
    return '${parts[0].padLeft(2, '0')} ساعة و ${parts[1].padLeft(2, '0')} دقيقة';
  }
}
