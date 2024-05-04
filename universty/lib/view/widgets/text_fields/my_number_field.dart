import '../../../libraries.dart';

class MyNumberField extends StatelessWidget {
  const MyNumberField({
    Key? key,
    this.label,
    this.hint,
    this.controller,
    this.onChange,
    this.onSubmite,
    this.readOnly,
    this.padding,
    this.value,
    // this.borderRadius,
    this.sufIcon,
    this.validate,
    required this.withDot,
  }) : super(key: key);
  final TextEditingController? controller;
  final String? label;
  final String? hint;
  final bool? readOnly;
  final double? padding;
  // final double? borderRadius;
  final bool withDot;
  final String? value;
  final Widget? sufIcon;
  final Function? validate;
  final void Function(String)? onChange;
  final void Function(String)? onSubmite;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // // // borderRadius: BorderRadius.circular(borderRadius ?? AppSizes.w01),
        color: AppColorManger.white,
      ),
      padding: EdgeInsets.all(padding ?? 0),
      child: TextFormField(
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        inputFormatters:
            // withDot
            //     ? <TextInputFormatter>[
            //         FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,3}'))
            //       ]
            //     :
            <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
        controller: controller,
        // validator: (value) => validate!(value),
        textAlign: TextAlign.center,
        onChanged: onChange,
        onFieldSubmitted: onSubmite,
        style: context.textTheme.displayMedium!,
        cursorColor: AppColorManger.grey,
        autocorrect: true,
        textCapitalization: TextCapitalization.sentences,
        readOnly: readOnly ?? false,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.all(1),
          errorStyle: context.textTheme.displayMedium!
              .copyWith(color: AppColorManger.red),
          label: Text(
            label!,
            style: context.textTheme.displayMedium!,
          ),
          floatingLabelStyle: context.textTheme.displayMedium,
          // hintText: hint,
          hintStyle: context.textTheme.displayMedium!,
          prefixIcon: sufIcon,
          suffixIconColor: Get.theme.primaryColor,
          prefixIconColor: Get.theme.primaryColor,
          filled: true,
          fillColor: AppColorManger.white,
          border: const OutlineInputBorder(
            // // // borderRadius: BorderRadius.circular(borderRadius ?? AppSizes.w01),
            borderSide: BorderSide(color: AppColorManger.grey, width: 1),
          ),
          focusedBorder: const OutlineInputBorder(
            // // // borderRadius: BorderRadius.circular(borderRadius ?? AppSizes.w01),
            borderSide: BorderSide(color: AppColorManger.grey, width: 1),
          ),
          disabledBorder: const OutlineInputBorder(
            // // borderRadius: BorderRadius.circular(AppSizes.w01),
            borderSide: BorderSide(color: AppColorManger.grey, width: 1),
          ),
          enabledBorder: const OutlineInputBorder(
            // // // borderRadius: BorderRadius.circular(borderRadius ?? AppSizes.w01),
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
