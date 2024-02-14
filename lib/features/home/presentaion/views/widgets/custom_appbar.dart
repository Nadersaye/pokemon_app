import 'package:flutter/material.dart';
import 'package:pokemon_app/core/utils/app_strings.dart';
import 'package:pokemon_app/core/utils/app_styles.dart';
import '../../../../../core/utils/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primaryColor,
      title: Text(
        AppStrings.defaultAppbarTitle,
        style: AppStyles.style34(context).copyWith(
          color: AppColors.whiteColor,
        ),
      ),
      leading: const SizedBox(),
      titleSpacing: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
