import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expansess_header.dart';
import 'package:responsive_dash_board/widgets/all_expensess_items_list_view.dart';

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
            AllExpensessItemsListView(),
          ],
        ),
      ),
    );
  }
}
