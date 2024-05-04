import '../../../libraries.dart';

class MyDropMenuSearch extends StatelessWidget {
  const MyDropMenuSearch({
    super.key,
    required this.label,
    required this.dropdownMenuEntries,
    this.onSelected,
  });

  final String label;
  final List<DropdownMenuEntry<Object>> dropdownMenuEntries;
  final Function(Object?)? onSelected;
  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      enableSearch: true,
      expandedInsets: const EdgeInsets.all(10),
      enableFilter: true,
      leadingIcon: const Icon(Icons.search),
      label: Text(label, style: Theme.of(context).textTheme.displayMedium),
      // trailingIcon: const Icon(Icons.search),

      dropdownMenuEntries: dropdownMenuEntries,
      textStyle: Theme.of(context).textTheme.displayMedium,
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        contentPadding: EdgeInsets.symmetric(vertical: 5.0),
      ),
      onSelected: onSelected,
    );
  }
}
