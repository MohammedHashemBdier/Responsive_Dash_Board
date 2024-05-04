import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expansess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expansess_header.dart';
import 'package:responsive_dash_board/widgets/all_expensess_%20item.dart';

class AllExpansess extends StatelessWidget {
  const AllExpansess({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Column(
          children: [
            AllExpansessHeader(),
            SizedBox(
              height: 16,
            ),
            AllExpansessItem(
                itemModel: AllExpansessItemModel(
                    image: Assets.imagesIncome,
                    title: "Income",
                    date: "April 2024",
                    price: r"$20,129")),
          ],
        ),
      ),
    );
  }
}
