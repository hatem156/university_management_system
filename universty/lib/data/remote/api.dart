// final IpAddressControllerImp ipAddressController =
//     Get.put(IpAddressControllerImp());

class Api {
  //*************************Base Url***********************
  static String baseUrl = 'http://localhost:8000';
  // ipAddressController.ipAddress;
  //*************************Employers***********************
  static String apiGetEmp = '$baseUrl/emp';
  static String apiLogin = '$baseUrl/login';
  static String apiViewEmpFiles = '$baseUrl/uploads_emp';
  static String apiUploadEmpFiles = '$baseUrl/upload_emp';
  //*************************students***********************
  static String apiViewStudents = '$baseUrl/students';
  //*************************courses***********************
  static String apiViewCourse = '$baseUrl/courses';
  //*************************department***********************
  static String apiViewDepartment = '$baseUrl/departments';
  //*************************attendence***********************
  static String apiViewttAendence = '$baseUrl/Attendance';
  //*************************Fees***********************
  static String apiViewtFees = '$baseUrl/Fees';
  //*************************finalResult***********************
  static String apiViewtFinalResult = '$baseUrl/final_result';
  //*************************PracticalResult***********************
  static String apiViewtPracticalResult = '$baseUrl/practical_result';
  //*************************MidResult***********************
  static String apiViewtMidResult = '$baseUrl/mid_result';
}
