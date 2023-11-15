import 'package:bloc_app_stuctura/generated/assets.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/theme/themeUtils.dart';

class ChangeThemeSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  ChangeThemeSwitch({
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        value == false ? onChanged(true) : onChanged(false);
      },
      child: AnimatedContainer(
        duration: kAnimationDuration,
        curve: kAnimationCurve,
        width: 80.0,
        height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.0),
          color: !value ? kLightPlaceholderText : kDarkPlaceholderText,
        ),
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      Assets.settingSun,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                      width: 20,
                    ),
                    SvgPicture.asset(
                      Assets.settingMoon,
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 4.0,
              ),
              child: AnimatedAlign(
                duration: kAnimationDuration,
                curve: kAnimationCurve,
                alignment: value ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  width: 28.0,
                  height: 28.0,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: AnimatedSwitcher(
                    duration: kAnimationDuration,
                    switchInCurve: kAnimationCurve,
                    reverseDuration: Duration.zero,
                    child: value
                        ? SvgPicture.asset(
                            Assets.settingMoonFilled,
                            width: 20,
                          )
                        : SvgPicture.asset(
                            Assets.settingSunFilled,
                            width: 20,
                          ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
