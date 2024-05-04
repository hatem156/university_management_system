import '../../../libraries.dart';

class MyLottieEmpty extends StatelessWidget {
  const MyLottieEmpty({super.key, this.width, this.height});
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        'assets/lottie/empty.json',
        width: width ?? AppSizes.w2,
        height: height ?? AppSizes.h2,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
