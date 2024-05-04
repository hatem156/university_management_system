import 'package:universty/controllers/students/students_controller.dart';
import 'package:universty/view/widgets/Students/students_table.dart';
import '../../../libraries.dart';

class ShowStudentScreen extends StatelessWidget {
  ShowStudentScreen({super.key});
  final StudentControllerImp studentController = Get.find();
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: AppRoutes.showStudent,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              StudentTable(
                idHeader: true,
              ),
              SizedBox(height: AppSizes.h02),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(height: AppSizes.h02);
                  },
                  itemCount: studentController.studentList.length,
                  itemBuilder: (context, index) {
                    var dep = studentController.studentList[index];
                    return StudentTable(
                      student: dep,
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
