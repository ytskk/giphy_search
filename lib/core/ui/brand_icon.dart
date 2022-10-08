import 'package:flutter/material.dart';
import 'package:giphy/constants/constants.dart';
import 'package:giphy/core/core.dart';

/// {@template brand_icon}
///
/// Creates a brand icon. With smooth color transition of brand [colorVariants].
///
/// {@endtemplate}
///
/// Special thanks:
/// - https://gist.github.com/mpfaff/5c6247687d4595dde3f69a7e6008f14e
class BrandIcon extends StatefulWidget {
  /// {@macro brand_icon}
  const BrandIcon({super.key});

  @override
  State<BrandIcon> createState() => _BrandIconState();
}

class _BrandIconState extends State<BrandIcon>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: brandIconColorsCycleDuration,
    )
      ..forward()
      ..repeat();

    _colorAnimation = TweenSequence(_colors).animate(_animationController);
  }

  @override
  void dispose() {
    super.dispose();

    _animationController.dispose();
  }

  final _colors = <TweenSequenceItem<Color?>>[
    for (int colorIndex = 0;
        colorIndex < colorVariants.length - 1;
        colorIndex += 1)
      TweenSequenceItem(
        weight: 1,
        tween: ColorTween(
          begin: colorVariants.elementAt(colorIndex),
          end: colorVariants.elementAt(colorIndex + 1),
        ),
      ),

    /// To loop last and first color, make smooth transition.
    TweenSequenceItem(
      weight: 1,
      tween: ColorTween(
        begin: colorVariants.last,
        end: colorVariants.first,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, child) {
        return Icon(
          Icons.gif_box_rounded,
          size: 44,
          color: _colorAnimation.value,
        );
      },
      animation: _colorAnimation,
    );
  }
}
