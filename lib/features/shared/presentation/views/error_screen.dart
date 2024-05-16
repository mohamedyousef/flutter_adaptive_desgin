import 'package:predictiva_task/app/core_common_libs.dart';
import 'package:predictiva_task/common_libs.dart';
import 'package:predictiva_task/ui_components/ui_components.dart';

class ErrorScreen extends StatelessWidget {
  final ResultErrorType resultErrorType;
  const ErrorScreen({
    super.key,
    required this.resultErrorType,
  });

  @override
  Widget build(BuildContext context) {
    Widget getWidget() {
      return ErrorView(
        message: resultErrorType.errorMessage(),
      );
    }

    return Scaffold(
      body: SizedBox.expand(child: getWidget()),
    );
  }
}
