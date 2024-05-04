import '../../../libraries.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key, required this.content});
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(AppSizes.w01),
        width: double.infinity,
        decoration: BoxDecoration(
          color: context.theme.scaffoldBackgroundColor,
          // border: Border.symmetric(
          //   vertical: BorderSide(
          //     width: 2,
          //     color: Get.theme.primaryColorLight,
          //   ),
          // ),
        ),
        child: content
        //  Stack(
        //   children: [
        //     Center(
        //       child: Image.asset(
        //         AppImageAssets.home,
        //         opacity: const AlwaysStoppedAnimation(.1),
        //       ),
        //     ),
        //     Positioned(bottom: 0, top: 0, right: 0, left: 0, child: content),
        //   ],
        // ),
        );
  }
}
