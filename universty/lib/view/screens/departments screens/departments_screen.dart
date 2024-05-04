import '../../../controllers/department/department_controller.dart';
import '../../../libraries.dart';
import '../../widgets/departments/department_table.dart';

class DepartmentsScreen extends StatelessWidget {
  DepartmentsScreen({super.key});
  final DepartmentControllerImp departmentController = Get.find();
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: AppRoutes.departmentsScreen,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              DepartmentTable(
                idHeader: true,
              ),
              SizedBox(height: AppSizes.h02),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(height: AppSizes.h02);
                  },
                  itemCount: departmentController.departmentList.length,
                  itemBuilder: (context, index) {
                    var dep = departmentController.departmentList[index];
                    return DepartmentTable(
                      dep: dep,
                      idHeader: false,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
