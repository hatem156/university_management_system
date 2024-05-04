import 'package:universty/view/widgets/public/table_button.dart';
import '../../../controllers/department/department_controller.dart';
import '../../../data/models/department/department_model.dart';
import '../../../libraries.dart';

class DepartmentTable extends StatelessWidget {
  DepartmentTable({
    super.key,
    this.dep,
    required this.idHeader,
  });

  final DepartmentModel? dep;
  final bool idHeader;
  final DepartmentControllerImp departmentController = Get.find();

  @override
  Widget build(BuildContext context) {
    if (idHeader) {
      return const Row(
        children: [
          MyCiel(
            text: AppStrings.name,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: AppStrings.numberOfStudent,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: AppStrings.image,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: AppStrings.timeTable,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: AppStrings.mangerName,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: AppStrings.mangerID,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: AppStrings.edit,
            isHeader: false,
            width: 1,
            isBack: false,
          ),
        ],
      );
    } else {
      return Row(
        children: [
          MyCiel(
            text: dep!.name,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: dep!.numOfStudents,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: dep!.image,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: dep!.timeTable,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: dep!.mangerName,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: dep!.mangerId,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          TableButton(
            edit: () {
              departmentController.prepareEditScreen(dep: dep!);
              Get.toNamed(
                AppRoutes.editDepartment,
                arguments: [dep],
              );
            },
            icon: Icons.edit,
          ),
          TableButton(
            edit: () {
              departmentController.deletedepartment(department: dep!);
              // Get.toNamed(
              //   AppRoutes.editStudentScreen,
              //   arguments: [student],
              // );
            },
            icon: Icons.delete,
          ),
        ],
      );
    }
  }
}
