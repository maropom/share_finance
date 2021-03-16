import 'package:share_finance/src/models/image_model.dart';

import 'finance_image_provider.dart';

class Repository {
  final provider = new FinanceImageProvider();

  Future<List<ImageModel>> fetchAllProvider() => provider.fetchImageList();
}