import 'package:rxdart/rxdart.dart';
import 'package:share_finance/src/models/image_model.dart';
import 'package:share_finance/src/resources/repository.dart';

class FinanceBlock {
  final _repository = Repository();
  final _financeFetcher = PublishSubject<List<ImageModel>>();

  Stream<List<ImageModel>> get allFinance => _financeFetcher.stream;

  fetchAllFinance() async {
    List<ImageModel> imageModelList = await _repository.fetchAllProvider();
    _financeFetcher.sink.add(imageModelList);
  }

  dispose() {
    _financeFetcher.close();
  }
}