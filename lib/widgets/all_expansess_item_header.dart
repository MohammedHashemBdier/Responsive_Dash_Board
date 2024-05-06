import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpansessItemHeader extends StatelessWidget {
  const AllExpansessItemHeader({
    super.key,
    required this.image,
    this.imageBackgroundColor,
    this.imageColor,
  });
  final String image;
  final Color? imageBackgroundColor, imageColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(14),
          decoration: ShapeDecoration(
            shape: const OvalBorder(),
            color: imageBackgroundColor ?? const Color(0xFFFAFAFA),
          ),
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
              imageColor ?? const Color(0xff4EB7F2),
              BlendMode.srcIn,
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imageColor == null ? const Color(0xFF064061) : Colors.white,
          ),
        ),
      ],
    );
  }
}
