import 'package:universty/controllers/department/department_controller.dart';
import 'package:universty/data/models/department/department_model.dart';

import '../../../libraries.dart';

class EditDepartmentScreen extends StatelessWidget {
  EditDepartmentScreen({super.key});
  final DepartmentControllerImp departmentController = Get.find();
  final DepartmentModel dep = Get.arguments[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                    departmentController.editdepartment(id: dep.id.toString());
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
