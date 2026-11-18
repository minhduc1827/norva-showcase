import 'package:flutter/material.dart';

import '../../../../app/theme/norva_colors.dart';

class OnboardingPageIndicator extends StatelessWidget {
  const OnboardingPageIndicator({
    required this.currentIndex,
    super.key,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        final selected = index == currentIndex;

        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.symmetric(horizontal: 3),
          width: selected ? 18 : 6,
          height: 5,
          decoration: BoxDecoration(
            color: selected
                ? NorvaColors.primary
                : NorvaColors.primary.withValues(alpha: 0.18),
            borderRadius: BorderRadius.circular(10),
          ),
        );
      }),
    );
  }
}