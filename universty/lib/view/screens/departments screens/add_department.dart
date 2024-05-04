import 'package:universty/controllers/department/department_controller.dart';

import '../../../libraries.dart';

class AddDepartment extends StatelessWidget {
  AddDepartment({super.key});
  final DepartmentControllerImp departmentController = Get.find();

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: AppRoutes.addDepartment,
      body: Form(
        key: departmentController.adddepartmentKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  width: 500,
                  child: TextField(
                    controller: departmentController.departmentName,
                    cursorColor: Colors.yellow,
                    decoration: InputDecoration(
                      label: const Text("Name of Deparment"),
                      focusColor: AppColorManger.primary,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 500,
                  child: TextField(
                    controller: departmentController.numOfStudents,
                    cursorColor: Colors.yellow,
                    decoration: InputDecoration(
                      label: const Text("Number of Students"),
                      focusColor: AppColorManger.primary,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 500,
                  child: TextField(
                    controller: departmentController.image,
                    cursorColor: Colors.yellow,
                    decoration: InputDecoration(
                      label: const Text("image"),
                      focusColor: AppColorManger.primary,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 500,
                  child: TextField(
                    controller: departmentController.timeTable,
                    cursorColor: Colors.yellow,
                    decoration: InputDecoration(
                      label: const Text("Time Table"),
                      focusColor: AppColorManger.primary,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 500,
                  child: TextField(
                    controller: departmentController.mangerId,
                    cursorColor: Colors.yellow,
                    decoration: InputDecoration(
                      label: const Text("Manger ID"),
                      focusColor: AppColorManger.primary,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 500,
                  child: TextField(
                    controller: departmentController.mangerName,
                    cursorColor: Colors.yellow,
                    decoration: InputDecoration(
                      label: const Text("Manger Name"),
                      focusColor: AppColorManger.primary,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ),
                MyButton(
                  text: AppStrings.add,
                  onPressed: () {
                    departmentController.adddepartment();
                  },
                  color: AppColorManger.primary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
