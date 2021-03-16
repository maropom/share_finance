import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_finance/src/blocks/finance_block.dart';
import 'package:share_finance/src/models/image_model.dart';

class FinanceList extends StatelessWidget {
  final _bloc = FinanceBlock();

  @override
  Widget build(BuildContext context) {
    _bloc.fetchAllFinance();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "test",
          ),
      ),
      body: StreamBuilder(
        stream: _bloc.allFinance,
        builder: (_, snapshot) {
          if (snapshot.hasData) {
            return _buildList(snapshot);
          } else if (snapshot.hasError) {

            return Text("エラーが発生しました" + snapshot.error.toString());
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        }
      ),
    );
  }

  Widget _buildList(AsyncSnapshot<List<ImageModel>> snapshot) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
      itemBuilder: (_, index) {
        ImageModel model = snapshot.data[index];
        return Image.network(model.imageUrl);
      },
      itemCount: snapshot.data.length,
    );
  }
}