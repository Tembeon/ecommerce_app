import '../models/details_model.dart';

abstract class IDetailsRepository {
  /// Returns [DetailsModel] about requested item.
  Future<DetailsModel> getDetails();
}
