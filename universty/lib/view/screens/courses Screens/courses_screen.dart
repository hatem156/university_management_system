import 'package:universty/controllers/courses/courses_controller.dart';
import 'package:universty/view/widgets/courses/courses_table.dart';
import '../../../libraries.dart';

class CoursesScreen extends StatelessWidget {
  CoursesScreen({super.key});
  final CourseControllerImp corseController = Get.find();
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: AppRoutes.showCourse,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              CourseTable(
                idHeader: true,
              ),
              SizedBox(height: AppSizes.h02),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(height: AppSizes.h02);
                  },
                  itemCount: corseController.courseList.length,
                  itemBuilder: (context, index) {
                    var dep = corseController.courseList[index];
                    return CourseTable(
                      course: dep,
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
