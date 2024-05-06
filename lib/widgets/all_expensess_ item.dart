import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expansess_item_model.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_all_expensesss_item.dart';

class AllExpansessItem extends StatelessWidget {
  const AllExpansessItem({
    super.key,
    required this.itemModel,
    required this.isSelected,
  });
  final bool isSelected;
  final AllExpensessItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensessItem(itemModel: itemModel)
        : InActiveAllExpensessItem(itemModel: itemModel);
  }
}
