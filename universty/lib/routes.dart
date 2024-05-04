import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:universty/view/screens/courses%20Screens/add_course_screen.dart';
import 'package:universty/view/screens/courses%20Screens/courses_screen.dart';
import 'package:universty/view/screens/courses%20Screens/edit_course_screen.dart';
import '/view/screens/departments%20screens/add_department.dart';

import 'core/middle_ware/middle_ware.dart';
import 'view/screens/departments screens/departments_screen.dart';
import 'view/screens/departments screens/edit_department_screen.dart';
import 'view/screens/main/ip_address_screen.dart';
import 'view/screens/main/loading_screen.dart';
import 'view/screens/main/login_screen.dart';
import 'view/screens/main/main_screen.dart';
import 'view/screens/main/splash_screen.dart';
import 'view/screens/students Screen/add_student_screen.dart';
import 'view/screens/students Screen/edit_student_screen.dart';
import 'view/screens/students Screen/show_student.dart';

List<GetPage<dynamic>>? getRoutes = [
  //************************main Screens************************
  GetPage(
    name: '/',
    page: () => SplashScreen(),
    middlewares: [
      MiddleWare(),
    ],
  ),
  GetPage(
    name: AppRoutes.mainScreen,
    page: () => MainScreen(),
  ),
  // GetPage(
  //   name: AppRoutes.splashScreen,
  //   page: () => SplashScreen(),
  // ),

  GetPage(
    name: AppRoutes.loadingScreen,
    page: () => LoadingScreen(),
  ),
  GetPage(
    name: AppRoutes.ipAddressScreen,
    page: () => IpAddressScreen(),
  ),
  GetPage(
    name: AppRoutes.loginScreen,
    page: () => LoginScreen(),
  ),
  GetPage(
    name: AppRoutes.addDepartment,
    page: () => AddDepartment(),
  ),
  GetPage(
    name: AppRoutes.departmentsScreen,
    page: () => DepartmentsScreen(),
  ),

  GetPage(
    name: AppRoutes.editDepartment,
    page: () => EditDepartmentScreen(),
  ),

  GetPage(
    name: AppRoutes.showStudent,
    page: () => ShowStudentScreen(),
  ),
  GetPage(
    name: AppRoutes.editStudentScreen,
    page: () => EditStudentScreen(),
  ),
  GetPage(
    name: AppRoutes.addStudent,
    page: () => AddStudent(),
  ),
  GetPage(
    name: AppRoutes.showCourse,
    page: () => CoursesScreen(),
  ),
  GetPage(
    name: AppRoutes.editCourseScreen,
    page: () => EditCourseScreen(),
  ),
  GetPage(
    name: AppRoutes.addCourse,
    page: () => AddCourse(),
  ),
];

class AppRoutes {
  //************************main Screens************************
  static const String onBoardingScreen = '/onBoarding';
  static const String splashScreen = '/splashScreen';
  static const String mainScreen = '/mainScreen';
  static const String loadingScreen = '/loadingScreen';
  static const String ipAddressScreen = '/ipAddressScreen';
  static const String loginScreen = '/login';
  //************************departments Screens************************
  static const String addDepartment = '/AddDepartment';
  static const String editDepartment = '/editDepartment';
  static const String departmentsScreen = '/departmentsScreen';
  //************************students Screens************************
  static const String showStudent = '/showStudent';
  static const String addStudent = '/addStudent';
  static const String editStudentScreen = '/editStudentScreen';
  //************************courses Screens************************
  static const String showCourse = '/showCourse';
  static const String addCourse = '/addCourse';
  static const String editCourseScreen = '/editCourseScreen';
}
