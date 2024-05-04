import '../../../libraries.dart';

myDialuge({
  required Function confirm,
  required String title,
  required String confirmHint,
  bool? hidePassword,
  Widget? content,
}) {
  final TextEditingController controller = TextEditingController();
  return Get.defaultDialog(
    title: title,
    backgroundColor: Get.theme.primaryColor,
    buttonColor: Get.theme.scaffoldBackgroundColor,
    titleStyle: Get.textTheme.displayLarge!.copyWith(color: Colors.white),
    radius: 10,
    cancelTextColor: Colors.white,
    confirmTextColor: Get.theme.primaryColorLight,
    textConfirm: AppStrings.yes.tr,
    textCancel: AppStrings.no.tr,
    onConfirm: () {
      if (controller.text == confirmHint) {
        confirm();
        Get.back();
      } else {
        MySnackBar.snack(AppStrings.pleaseWriteTheHint.tr, '');
      }
    },
    onCancel: () {},
    content: MyTextField(
      label: '',
      hint: confirmHint,
      controller: controller,
      hidePassword: hidePassword ?? true,
      validate: (v) {},
    ),
  );
}
