import '../../../libraries.dart';

class TableButton extends StatelessWidget {
  const TableButton({
    super.key,
    required this.edit,
    required this.icon,
    this.margin,
    this.height,
  });
  final IconData icon;
  final VoidCallback? edit;
  final double? margin;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: MyButton(
        margin: margin ?? AppSizes.h01 / 2,
        color: AppColorManger.primary,
        height: height ?? AppSizes.h04,
        minWidth: AppSizes.h05,
        text: AppStrings.print.tr,
        onPressed: edit!,
        child: Icon(
          icon,
          color: Colors.white,
          size: height == null ? AppSizes.h02 : height! / 2,
        ),
      ),
    );
  }
}
