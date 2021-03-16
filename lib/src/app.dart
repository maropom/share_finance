import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_finance/src/ui/finance_list.dart';

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        body: FinanceList(),
      ),
    );
  }
}