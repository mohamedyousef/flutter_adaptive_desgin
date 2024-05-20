import 'package:predictiva_task/common_libs.dart';

class AppCircularIndicator extends StatelessWidget {
  final Color? color;
  final double? width;
  final double? height;
  final double strokeWidth;

  const AppCircularIndicator({
    super.key,
    this.color,
    this.width,
    this.height,
    this.strokeWidth = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 40.0,
      height: height ?? 40.0,
      child: CircularProgressIndicator(
        color: color ?? $styles.colors.accent1,
        strokeWidth: strokeWidth,
      ),
    );
  }
}
