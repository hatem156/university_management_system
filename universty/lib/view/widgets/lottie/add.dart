import '../../../libraries.dart';

class MyLottieAdd extends StatelessWidget {
  const MyLottieAdd({super.key, this.width, this.height});
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        'assets/lottie/add.json',
        width: width ?? AppSizes.h1,
        height: height ?? AppSizes.h1,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
