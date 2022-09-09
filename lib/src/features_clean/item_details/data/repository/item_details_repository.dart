import '../../../../core/service_locator/service_locator.dart';
import '../../domain/models/details_model.dart';
import '../../domain/repository/item_details_repository.dart';
import '../datasource/dto_get_item_details.dart';

class ItemDetailsRepository implements IDetailsRepository {
  @override
  Future<DetailsModel> getDetails() async {
    var response = await sl<DtoGetItemDetailsFromServer>().getDetails();

    return DetailsModel(
      deviceCpu: response.cpu,
      deviceCamera: response.camera,
      listOfCapacities: response.capacity,
      listOfColors: response.color,
      id: response.id,
      listOfImages: response.images,
      isFavorites: response.isFavorites,
      price: response.price,
      rating: response.rating,
      deviceSd: response.sd,
      deviceRam: response.ssd,
      deviceName: response.title,
    );
  }
}
