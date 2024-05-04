import '../../../libraries.dart';

class MyImageCircluar extends StatelessWidget {
  const MyImageCircluar({
    super.key,
    required this.url,
    this.width,
    this.height, //this.border
  });
  final String url;
  final double? width;
  final double? height;
  //final BorderRadiusGeometry? border;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      width: width,
      height: height,
      imageBuilder: (context, imageProvider) => CircleAvatar(
        radius: height,
        backgroundImage: imageProvider,
      ),
      placeholder: (context, url) => Shimmer.fromColors(
        baseColor: Colors.black12,
        highlightColor: Colors.black26,
        enabled: true,
        child: Container(
          decoration: BoxDecoration(
            color: AppColorManger.grey,
            borderRadius: BorderRadius.circular(AppSizes.h01),
          ),
          // height: AppSizes.h1,
          // margin: EdgeInsets.all(AppSizes.h01),
        ),
      ),
      errorWidget: (context, url, error) => Center(
        child: Lottie.asset(
          'assets/lottie/questions.json',
          width: width ?? 150,
          height: height,
        ),
      ),
    );
  }
}
