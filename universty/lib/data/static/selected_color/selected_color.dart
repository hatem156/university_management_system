import '../../../libraries.dart';

class SelectedColor {
  int id;
  String label;
  Color color;
  Function onPressed;
  SelectedColor({
    required this.id,
    required this.label,
    required this.color,
    required this.onPressed,
  });
}
