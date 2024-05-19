import 'package:flutter/material.dart';
import 'package:predictiva_task/app/core_common_libs.dart';
import 'package:predictiva_task/common_libs.dart';

class PredictivaAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool isHasLogo;
  final bool isSearchButton;
  final bool isHasBackButton;
  final bool centerLogo;
  final Widget? leading;

  const PredictivaAppBar({
    super.key,
    this.title,
    this.leading,
    this.isHasLogo = false,
    this.isSearchButton = false,
    this.centerLogo = false,
    this.isHasBackButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: $styles.colors.black20,
        border: Border(
          bottom: BorderSide(
            color: $styles.colors.borderColor,
            width: 1,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80.scale());
}
