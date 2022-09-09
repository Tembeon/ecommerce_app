import '../../../../core/utils/service_locator.dart';
import '../../domain/models/details_model.dart';
import '../../domain/repository/item_details_repository.dart';
import '../datasource/dto_get_item_details.dart';

class ItemDetailsRepository implements IDetailsRepository {

  /// Performs server request and converts it to [DetailsModel].
  @override
  Future<DetailsModel> getDetails() async {
    var response = await sl<DtoGetItemDetailsFromServer>().getDetails();

    return DetailsModel(
      listOfCapacities: response.capacity,
      listOfColors: response.color,
      id: response.id,
      listOfImages: response.images,
      isFavorites: response.isFavorites,
      price: response.price,
      rating: response.rating,
      device: DeviceDetails(
        name: response.title,
        camera: response.camera,
        cpu: response.cpu,
        ram: response.ssd,
        sd: response.sd,
      ),
    );
  }
}
