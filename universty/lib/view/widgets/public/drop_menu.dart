import 'package:dropdown_button2/dropdown_button2.dart';

import '../../../libraries.dart';

class MyDropMenu extends StatelessWidget {
  const MyDropMenu({
    super.key,
    required this.bodyItems,
    required this.label,
    this.onChanged,
    this.value,
  });
  final List bodyItems;
  final String label;
  final String? value;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        barrierColor: AppColorManger.primary.withOpacity(0.5),
        dropdownStyleData: const DropdownStyleData(
          decoration: BoxDecoration(color: Colors.white),
        ),
        value: value,
        hint: Text(
          label,
          style: context.textTheme.displayMedium,
        ),
        items: bodyItems
            .map(
              (sup) => DropdownMenuItem<String>(
                value: sup,
                child: Text(sup, style: context.textTheme.displayMedium),
              ),
            )
            .toList(),
        onChanged: onChanged,
      ),
    );
  }
}
