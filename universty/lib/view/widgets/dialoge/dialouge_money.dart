import '../../../libraries.dart';

dialugeMoney({
  required Function confirm,
  required String title,
  required TextEditingController money,
  required TextEditingController notes,
}) {
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
      confirm();
      Get.back();
    },
    onCancel: () {},
    content: SizedBox(
      height: AppSizes.h1,
      width: AppSizes.w4,
      child: Row(
        children: [
          Expanded(
            child: MyNumberField(
              label: '',
              hint: '0',
              controller: money,
              withDot: false,
              validate: (v) {},
            ),
          ),
          SizedBox(width: AppSizes.w01),
          Expanded(
            flex: 2,
            child: MyTextField(
              label: '',
              hint: 'notes....',
              controller: notes,
              hidePassword: false,
              validate: (v) {
                return validInput(
                  max: 250,
                  min: 0,
                  type: AppStrings.validateAdmin,
                  val: v,
                );
              },
              onSubmite: (v) {
                confirm();
                Get.back();
              },
            ),
          ),
        ],
      ),
    ),
  );
}
