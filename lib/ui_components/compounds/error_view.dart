import '../../common_libs.dart';
import '../basics/app_button.dart';

class ErrorView extends StatelessWidget {
  final String message;
  final VoidCallback? onRefreshButtonPressed;

  const ErrorView({super.key, this.onRefreshButtonPressed, required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          message,
          style: $styles.text.body.copyWith(
            color: $styles.colors.accent2,
          ),
        ),
        if (onRefreshButtonPressed != null) ...[
          Gap($styles.insets.lg),
          AppButton(onPressed: onRefreshButtonPressed, label: $strings.tryAgainButton),
        ]
      ],
    );
  }
}
