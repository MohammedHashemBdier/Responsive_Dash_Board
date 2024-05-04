import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expansess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expensess_%20item.dart';

class AllExpensessItemsListView extends StatelessWidget {
  const AllExpensessItemsListView({super.key});
  static const items = [
    AllExpensessItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensessItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensessItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items
          .map((e) => Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: AllExpansessItem(
                    itemModel: e,
                  ),
                ),
              ))
          .toList(),
    );
  }
}
