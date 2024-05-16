import 'package:predictiva_task/common_libs.dart';
import 'package:predictiva_task/ui_components/ui_components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.black,
      body: const _Layout(),
      appBar: const PredictivaAppBar(),
    );
  }
}

class _Layout extends StatelessWidget {
  const _Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}
