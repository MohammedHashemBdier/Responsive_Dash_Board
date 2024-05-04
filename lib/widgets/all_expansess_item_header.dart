import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpansessItemHeader extends StatelessWidget {
  const AllExpansessItemHeader({
    super.key,
    required this.image,
  });

  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(14),
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0xFFFAFAFA),
          ),
          child: SvgPicture.asset(image),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
          ),
        ),
      ],
    );
  }
}
