import 'package:freezed_annotation/freezed_annotation.dart';

part 'filters.freezed.dart';

/// Dummy filters model.
@freezed
class FiltersModel with _$FiltersModel {
  const factory FiltersModel({
    // e.x.: ['Samsung', 'Iphone']
    required List<String> brands,
    // e.x.: ['$300 - $500', '$500 - $1000']
    required List<String> prices,
    //e.x.: ['4.5 to 5.5 inches', '5.5 to 6.5 inches']
    required List<String> sizes,
  }) = _FiltersModel;
}
