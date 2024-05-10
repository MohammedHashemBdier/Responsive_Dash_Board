import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_cards_and_transction_history_section.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Color(0xFFF7F9FA),
      child: Row(
        children: [
          Expanded(child: CustomDrawer()),
          SizedBox(width: 32),
          Expanded(
            flex: 3,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 40),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.only(top: 40),
                              child: AllExpensessAndQuickInvoiceSection(),
                            )),
                        SizedBox(width: 24),
                        Expanded(
                          child: Column(
                            children: [
                              SizedBox(height: 40),
                              MyCardsAndTransctionHistorySection(),
                              SizedBox(height: 24),
                              Expanded(child: IncomeSection()),
                            ],
                          ),
                        ),
                        SizedBox(width: 32),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
