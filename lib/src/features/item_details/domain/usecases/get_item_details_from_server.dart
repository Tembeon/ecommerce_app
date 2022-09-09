import '../../../../core/service_locator/service_locator.dart';
import '../../data/repository/item_details_repository.dart';
import '../models/details_model.dart';

class GetItemDetailsFromServer {
  Future<DetailsModel> getDetails() {
    return sl<ItemDetailsRepository>().getDetails();
  }
}
