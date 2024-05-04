import '../../../libraries.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {Key? key,
      this.sufIcon,
      required this.label,
      this.hint,
      this.controller,
      required this.hidePassword,
      this.keyboard,
      this.readOnly,
      required this.validate,
      this.onSubmite,
      this.padding,
      this.onChanged,
      this.preIcon,
      this.maxLines})
      : super(key: key);
  final TextEditingController? controller;
  final Widget? sufIcon; //sufIcon
  final Widget? preIcon; //
  final int? maxLines;
  final String? label;
  final String? hint;
  final bool hidePassword;
  final bool? readOnly;
  final double? padding;
  final Function? validate;
  final TextInputType? keyboard;
  final Function(String)? onSubmite;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(AppSizes.w01),
        color: AppColorManger.white,
        // border: Border.all(color: AppColorManger.grey, width: 1)
      ),
      // padding: EdgeInsets.all(padding ?? 0),
      child: TextFormField(
        validator: (value) => validate!(value),
        onFieldSubmitted: onSubmite,
        onChanged: onChanged,
        textAlign: TextAlign.center,
        style: context.textTheme.displayMedium!,
        controller: controller,
        autocorrect: true,
        cursorColor: AppColorManger.grey,
        cursorWidth: 1,
        showCursor: true,
        keyboardType: keyboard,
        readOnly: readOnly == null ? false : true,
        obscureText: hidePassword,
        textCapitalization: TextCapitalization.sentences,
        maxLines: maxLines ?? 1,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.all(padding ?? 1),
          errorStyle: context.textTheme.displaySmall!
              .copyWith(color: AppColorManger.red),
          label: Text(label!, style: context.textTheme.displayMedium!),
          floatingLabelStyle: context.textTheme.displayMedium,
          hintText: hint,
          hintStyle: context.textTheme.displayMedium!
              .copyWith(color: AppColorManger.grey),
          suffixIcon: preIcon,
          prefixIcon: sufIcon,
          suffixIconColor: Get.theme.primaryColor,
          prefixIconColor: Get.theme.primaryColor,
          filled: true,
          fillColor: AppColorManger.white,
          border: const OutlineInputBorder(
            // // borderRadius: BorderRadius.circular(AppSizes.w01),
            borderSide: BorderSide(color: AppColorManger.grey, width: 1),
          ),
          focusedBorder: const OutlineInputBorder(
            // // borderRadius: BorderRadius.circular(AppSizes.w01),
            borderSide: BorderSide(color: AppColorManger.grey, width: 1),
          ),
          disabledBorder: const OutlineInputBorder(
            // // borderRadius: BorderRadius.circular(AppSizes.w01),
            borderSide: BorderSide(color: AppColorManger.grey, width: 1),
          ),
          enabledBorder: const OutlineInputBorder(
            // // borderRadius: BorderRadius.circular(AppSizes.w01),
            borderSide: BorderSide(color: AppColorManger.grey, width: 1),
          ),
          focusedErrorBorder: const UnderlineInputBorder(
            // // borderRadius: BorderRadius.circular(AppSizes.w01),
            borderSide: BorderSide(color: AppColorManger.red, width: 1),
          ),
          errorBorder: const UnderlineInputBorder(
            // // borderRadius: BorderRadius.circular(AppSizes.w01),
            borderSide: BorderSide(color: AppColorManger.red, width: 1),
          ),
        ),
      ),
    );
  }
}
