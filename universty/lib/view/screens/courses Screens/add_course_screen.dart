import 'package:universty/controllers/courses/courses_controller.dart';
import '../../../libraries.dart';

class AddCourse extends StatelessWidget {
  AddCourse({super.key});
  final CourseControllerImp courseController = Get.find();

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: AppRoutes.addCourse,
      body: SingleChildScrollView(
        child: Form(
          key: courseController.addCourseKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 500,
                    child: TextField(
                      controller: courseController.courseName,
                      cursorColor: Colors.yellow,
                      decoration: InputDecoration(
                        label: const Text("Course Name"),
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
                      controller: courseController.doctorName,
                      cursorColor: Colors.yellow,
                      decoration: InputDecoration(
                        label: const Text("Doctor Name"),
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
                      controller: courseController.numOfStudents,
                      cursorColor: Colors.yellow,
                      decoration: InputDecoration(
                        label: const Text("Number Of Students"),
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
                      controller: courseController.semester,
                      cursorColor: Colors.yellow,
                      decoration: InputDecoration(
                        label: const Text("Semester"),
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
                      controller: courseController.department,
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
                      controller: courseController.level,
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
                      controller: courseController.image,
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
                  MyButton(
                    text: AppStrings.add,
                    onPressed: () {
                      courseController.addCourse();
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
