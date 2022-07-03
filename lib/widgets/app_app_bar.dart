import 'package:flutter/material.dart';
import 'package:income_expense_track/constant/color_constant.dart';
import 'package:income_expense_track/constant/image_constant.dart';
import 'package:income_expense_track/widgets/app_image_assets.dart';

class AppAppBar extends PreferredSize {
  final bool isHome;
  final double margin;
  final String? title;
  final GestureTapCallback? onUserTap;
  final bool showUser;

  AppAppBar({
    Key? key,
    @required this.title,
    this.isHome = false,
    this.margin = 16,
    this.onUserTap,
    this.showUser = true,
    Widget? child,
    Size? preferredSize,
  }) : super(
          key: key,
          child: Container(),
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (!isHome)
              InkWell(
                onTap: () => Navigator.pop(context),
                child: Container(
                  margin: EdgeInsets.only(right: margin, left: 24),
                  child: const AppImageAsset(
                    image: ImageConstant.backIcon,
                    height: 20,
                    color: ColorConstant.white,
                  ),
                ),
              ),
            if (isHome) const SizedBox(width: 16),
            Text(
              title!,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: ColorConstant.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            if (showUser)
              InkWell(
                onTap: onUserTap,
                child: Container(
                  margin: EdgeInsets.only(right: margin, left: 24),
                  child: const AppImageAsset(
                    image: ImageConstant.userAvatar,
                    height: 50,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
