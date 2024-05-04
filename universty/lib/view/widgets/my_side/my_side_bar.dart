import '../../../core/constants/my_flutter_app_icons.dart';
import '../../../libraries.dart';

List<AdminMenuItem> mySideBar() {
  final MyService myService = Get.find();
  int? key = myService.sharedPreferences.getInt(AppStrings.adminKey);
  if (key == 1) {
    return admin();
  } else if (key == 2) {
    return admin();
  } else {
    return admin();
  }
}

List<AdminMenuItem> admin() {
  return [
    AdminMenuItem(
      title: AppStrings.mainScreen.tr,
      route: AppRoutes.mainScreen,
      icon: Icons.home,
    ),
    // departments
    AdminMenuItem(
      title: AppStrings.deprtment.tr,
      icon: CustomIcons.stock,
      children: [
        AdminMenuItem(
          title: AppStrings.deprtment.tr,
          route: AppRoutes.departmentsScreen,
          icon: Icons.category,
        ),
        AdminMenuItem(
          title: AppStrings.adddepartment.tr,
          route: AppRoutes.addDepartment,
          icon: FontAwesomeIcons.idBadge,
        ),
      ],
    ),

    // studdents
    AdminMenuItem(
      title: AppStrings.students.tr,
      icon: CustomIcons.billout,
      children: [
        AdminMenuItem(
          title: AppStrings.addstudent.tr,
          route: AppRoutes.addStudent,
          icon: FontAwesomeIcons.addressBook,
        ),
        AdminMenuItem(
          title: AppStrings.showstudents.tr,
          route: AppRoutes.showStudent,
          icon: Icons.report,
        ),
      ],
    ),
    // courses
    AdminMenuItem(
      title: AppStrings.courses.tr,
      icon: CustomIcons.billin,
      children: [
        AdminMenuItem(
          title: AppStrings.addcourse.tr,
          route: AppRoutes.addCourse,
          icon: FontAwesomeIcons.addressBook,
        ),
        AdminMenuItem(
          title: AppStrings.showcourses.tr,
          route: AppRoutes.showCourse,
          icon: Icons.bar_chart_rounded,
        ),
      ],
    ),

    //  attendence
    AdminMenuItem(
      title: AppStrings.attendence.tr,
      icon: CustomIcons.accounts,
      children: [
        AdminMenuItem(
          title: AppStrings.agents.tr,
          // // route: AppRoutes.searchAgentScreen,
          icon: FontAwesomeIcons.peopleLine,
        ),
        AdminMenuItem(
          title: AppStrings.sup.tr,
          // // route: AppRoutes.searchSupScreen,
          icon: FontAwesomeIcons.peopleLine,
        ),
        AdminMenuItem(
          title: AppStrings.discounts.tr,
          // // route: AppRoutes.discountsScreen,
          icon: FontAwesomeIcons.percent,
        ),
      ],
    ),
    //  hr
    AdminMenuItem(
      title: AppStrings.hr.tr,
      icon: Icons.people,
      children: [
        AdminMenuItem(
          title: AppStrings.employers.tr,
          // // route: AppRoutes.searchEmpScreen,
          icon: FontAwesomeIcons.person,
        ),
      ],
    ),
  ];
}

List<AdminMenuItem> user() {
  return [
    const AdminMenuItem(
      title: 'Dashboard',
      // route: '/',
      icon: Icons.dashboard,
    ),
    const AdminMenuItem(
      title: 'Top Level',
      icon: Icons.file_copy,
      children: [
        AdminMenuItem(
          title: 'Second Level Item 1',
          // route: '/secondLevelItem1',
        ),
        AdminMenuItem(
          title: 'Second Level Item 2',
          // route: '/secondLevelItem2',
        ),
        AdminMenuItem(
          title: 'Third Level Item 1',
          // // route: 'AppRoutes.addBill',
        ),
        AdminMenuItem(
          title: 'Third Level Item 2',
          // route: '/thirdLevelItem2',
          icon: Icons.image,
        ),
      ],
    ),
  ];
}

List<AdminMenuItem> empty() {
  return [];
}
