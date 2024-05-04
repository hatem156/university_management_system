import 'package:universty/controllers/students/students_controller.dart';
import '../../../libraries.dart';

class AddStudent extends StatelessWidget {
  AddStudent({super.key});
  final StudentControllerImp studentController = Get.find();

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: AppRoutes.addStudent,
      body: SingleChildScrollView(
        child: Form(
          key: studentController.addStudentKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 500,
                    child: TextField(
                      controller: studentController.studentName,
                      cursorColor: Colors.yellow,
                      decoration: InputDecoration(
                        label: const Text("Student Name"),
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
                      controller: studentController.age,
                      cursorColor: Colors.yellow,
                      decoration: InputDecoration(
                        label: const Text("Age"),
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
                      controller: studentController.userName,
                      cursorColor: Colors.yellow,
                      decoration: InputDecoration(
                        label: const Text("User Name"),
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
                      controller: studentController.password,
                      cursorColor: Colors.yellow,
                      decoration: InputDecoration(
                        label: const Text("Password"),
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
                      controller: studentController.email,
                      cursorColor: Colors.yellow,
                      decoration: InputDecoration(
                        label: const Text("Email"),
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
                      controller: studentController.department,
                      cursorColor: Colors.yellow,
                      decoration: InputDecoration(
                        label: const Text("Department"),
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
                      controller: studentController.gender,
                      cursorColor: Colors.yellow,
                      decoration: InputDecoration(
                        label: const Text("Gender"),
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
                      controller: studentController.phoneNumber,
                      cursorColor: Colors.yellow,
                      decoration: InputDecoration(
                        label: const Text("Phone Number"),
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
                      controller: studentController.code,
                      cursorColor: Colors.yellow,
                      decoration: InputDecoration(
                        label: const Text("Code"),
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
                      controller: studentController.level,
                      cursorColor: Colors.yellow,
                      decoration: InputDecoration(
                        label: const Text("Level"),
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
                      controller: studentController.image,
                      cursorColor: Colors.yellow,
                      decoration: InputDecoration(
                        label: const Text("Image"),
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
                      controller: studentController.status,
                      cursorColor: Colors.yellow,
                      decoration: InputDecoration(
                        label: const Text("Status"),
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
                      studentController.addStudent();
                    },
                    color: AppColorManger.primary,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
