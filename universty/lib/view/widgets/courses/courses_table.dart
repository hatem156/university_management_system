import 'package:universty/controllers/courses/courses_controller.dart';
import 'package:universty/data/models/Course/course_model.dart';
import 'package:universty/view/widgets/public/table_button.dart';
import '../../../libraries.dart';

class CourseTable extends StatelessWidget {
  CourseTable({
    super.key,
    this.course,
    required this.idHeader,
  });

  final CourseModel? course;
  final bool idHeader;
  final CourseControllerImp courseController = Get.find();

  @override
  Widget build(BuildContext context) {
    if (idHeader) {
      return const Row(
        children: [
          MyCiel(
            text: "Course Name",
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: "Doctor Name",
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: "Number Of Students",
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: "semester",
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: "department",
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: "level",
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: "image",
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: "Edit",
            isHeader: false,
            width: 1,
            isBack: false,
          ),
          MyCiel(
            text: "Delete",
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
            text: course!.courseName,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: course!.doctorName,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: course!.numOfStudents,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: course!.semester,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: course!.department,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: course!.department,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: course!.level,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: course!.image,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          TableButton(
            edit: () {
              courseController.prepareEditCourseScreen(course: course!);
              Get.toNamed(
                AppRoutes.editCourseScreen,
                arguments: [course],
              );
            },
            icon: Icons.edit,
          ),
          TableButton(
            edit: () {
              courseController.deleteCourse(course: course!);
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
