import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transction_model.dart';
import 'package:responsive_dash_board/widgets/transction_item.dart';

class TransctionHistoryListView extends StatelessWidget {
  const TransctionHistoryListView({super.key});

  static const items = [
    TransctionModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithdrawal: true),
    TransctionModel(
        title: 'Landing Page project',
        date: '5 Jun, 2023 ',
        amount: r'$32,535',
        isWithdrawal: false),
    TransctionModel(
        title: 'Juni Mobile App project',
        date: '3 Oct, 2024 ',
        amount: r'$50,000',
        isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (e) => TransctionItem(transctionModel: e),
          )
          .toList(),
    );
  }
}
