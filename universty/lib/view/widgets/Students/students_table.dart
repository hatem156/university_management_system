import 'package:universty/controllers/students/students_controller.dart';
import 'package:universty/data/models/students/students_model.dart';
import 'package:universty/view/widgets/public/table_button.dart';
import '../../../libraries.dart';

class StudentTable extends StatelessWidget {
  StudentTable({
    super.key,
    this.student,
    required this.idHeader,
  });

  final StudentModel? student;
  final bool idHeader;
  final StudentControllerImp studentController = Get.find();

  @override
  Widget build(BuildContext context) {
    if (idHeader) {
      return const Row(
        children: [
          MyCiel(
            text: "student name",
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: "age",
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: "user name",
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: "password",
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: "email",
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
            text: "gender",
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: "phone number",
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: "code",
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
            text: "status",
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
          MyCiel(
            text: AppStrings.delete,
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
            text: student!.studentName,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: student!.age,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: student!.userName,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: student!.password,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: student!.email,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: student!.department,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: student!.gender,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: student!.phoneNumber,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: student!.code,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: student!.level,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: student!.image,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          MyCiel(
            text: student!.status,
            isHeader: false,
            width: 2,
            isBack: false,
          ),
          TableButton(
            edit: () {
              studentController.prepareEditStudentScreen(stu: student!);
              Get.toNamed(
                AppRoutes.editStudentScreen,
                arguments: [student],
              );
            },
            icon: Icons.edit,
          ),
          TableButton(
            edit: () {
              studentController.deleteStudent(student: student!);
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
