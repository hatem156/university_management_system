import '../../../libraries.dart';

class MyImageContainerProvider {
  static CachedNetworkImageProvider cachedNetworkImageProvider({
    required String url,
    required double width,
    required double height,
  }) {
    return CachedNetworkImageProvider(
      url,
      maxHeight: height.toInt(),
      maxWidth: width.toInt(),
    );
  }
}
