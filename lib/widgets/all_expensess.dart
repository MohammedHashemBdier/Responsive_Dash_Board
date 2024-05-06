import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expansess_header.dart';
import 'package:responsive_dash_board/widgets/all_expensess_items_list_view.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';

class AllExpansess extends StatelessWidget {
  const AllExpansess({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 20,
      child: Column(
        children: [
          AllExpansessHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensessItemsListView(),
        ],
      ),
    );
  }
}
