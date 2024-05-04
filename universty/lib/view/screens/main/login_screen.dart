import '../../../controllers/emp/emp_controller.dart';
import '../../../libraries.dart';
import '../../widgets/text_fields/old_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final EmpControllerImp loginController = Get.find<EmpControllerImp>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: loginController.loginKey,
        child: Obx(
          () {
            if (loginController.isLoading.value) {
              return const Center(child: MyLottieLoading());
            } else {
              return Row(
                children: [
                  const Spacer(),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        const Spacer(),
                        Expanded(
                          flex: 2,
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(AppSizes.w01),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(AppSizes.h03),
                              border: Border.all(
                                color: AppColorManger.black,
                                width: 2,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Spacer(),
                                Text(AppStrings.logIn.tr,
                                    style: context.textTheme.titleSmall),
                                SizedBox(
                                  height: AppSizes.h05,
                                ),
                                OldTextField(
                                  controller: loginController.userName,
                                  sufIcon: Icon(Icons.email,
                                      color: context.theme.primaryColor),
                                  keyboard: TextInputType.emailAddress,
                                  label: AppStrings.userName.tr,
                                  validate: (val) {
                                    return validInput(
                                      max: 80,
                                      min: 3,
                                      type: AppStrings.validateAdmin,
                                      val: val,
                                    );
                                  },
                                  hidePassword: false,
                                  onSubmite: (value) async {
                                    await loginController.login();
                                  },
                                ),
                                SizedBox(
                                  height: AppSizes.h03,
                                ),
                                GetBuilder<EmpControllerImp>(
                                  builder: (_) {
                                    return OldTextField(
                                      controller: loginController.userPassword,
                                      label: AppStrings.password.tr.tr,
                                      hidePassword:
                                          loginController.isShown.value,
                                      sufIcon: Icon(Icons.lock,
                                          color: context.theme.primaryColor),
                                      keyboard: TextInputType.emailAddress,
                                      preIcon: IconButton(
                                        onPressed: () {
                                          loginController.showPassword();
                                        },
                                        icon: loginController.isShown.value
                                            ? const Icon(
                                                Icons.visibility,
                                                color: AppColorManger.primary,
                                              )
                                            : const Icon(
                                                Icons.visibility_off,
                                                color: AppColorManger.primary,
                                              ),
                                      ),
                                      validate: (val) {
                                        return validInput(
                                          max: 80,
                                          min: 3,
                                          type: AppStrings.validateAdmin,
                                          val: val,
                                        );
                                      },
                                      onSubmite: (value) async {
                                        await loginController.login();
                                      },
                                    );
                                  },
                                ),
                                SizedBox(
                                  height: AppSizes.h05,
                                ),
                                MyButton(
                                  text: AppStrings.logIn.tr,
                                  onPressed: () async {
                                    await loginController.login();
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                  const Spacer(),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
