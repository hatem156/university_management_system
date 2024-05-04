import '../../../libraries.dart';

class BackButton extends StatelessWidget {
  const BackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.back();
        // (AppRoutes.mainScreen);
      },
      icon: const Icon(Icons.arrow_back_ios_sharp),
    );
  }
}
