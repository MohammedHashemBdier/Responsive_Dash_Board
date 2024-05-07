import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Customer Name', hint: 'Type Customer Name')),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                  title: 'Customer Email', hint: 'Type Customer Email'),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Item Name', hint: 'Type Customer Name')),
            SizedBox(width: 16),
            Expanded(child: TitleTextField(title: 'Item  Mount', hint: 'USD')),
          ],
        ),
      ],
    );
  }
}
