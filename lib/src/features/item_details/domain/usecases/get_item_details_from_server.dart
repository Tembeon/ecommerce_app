import '../../../../core/utils/service_locator.dart';
import '../../data/repository/item_details_repository.dart';
import '../models/details_model.dart';

class GetItemDetailsFromServer {
  /// Returns [DetailsModel] from server.
  Future<DetailsModel> getDetails() {
    return sl<ItemDetailsRepository>().getDetails();
  }
}
