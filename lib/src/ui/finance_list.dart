import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_finance/src/blocks/finance_block.dart';
import 'package:share_finance/src/models/image_model.dart';

class FinanceList extends StatelessWidget {
//   final _bloc = FinanceBlock();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "test",
          ),
        backgroundColor: Colors.white,
      ),
      body: Center(child: Text("テスト"),)
    );
  }
}