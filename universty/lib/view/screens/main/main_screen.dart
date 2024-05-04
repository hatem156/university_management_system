import '../../../../../libraries.dart';
import '/controllers/emp/emp_controller.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  final EmpControllerImp empController = Get.find();

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: AppRoutes.mainScreen,
      body: MyContainer(
        content: Obx(
          () {
            if (empController.isLoading.value) {
              return const MyLottieLoading();
            } else {
              return Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(AppSizes.h01),
                          height: AppSizes.h1,
                          child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: AppSizes.w19,
                            ),
                            itemCount: empController.activeUsers.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(AppSizes.w2),
                                      color: AppColorManger.primary,
                                    ),
                                    height: AppSizes.h1,
                                    // width: AppSizes.w07,
                                    margin: EdgeInsets.only(left: AppSizes.h01),
                                    padding: EdgeInsets.all(AppSizes.w01),
                                    child: Center(
                                      child: Text(
                                        empController
                                            .activeUsers[index].empName,
                                        style: context.textTheme.displayMedium!
                                            .copyWith(
                                                color: AppColorManger.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: AppSizes.h02,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.green,
                                      radius: AppSizes.h01,
                                    ),
                                  )
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
