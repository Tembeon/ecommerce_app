import '../../../../core/service_locator/service_locator.dart';
import '../../data/repository/cart_repository.dart';
import '../models/cart_content/cart_content.dart';

class GetCartFromServer {
  /// Returns cart value
  Future<CartContent> getCart() {
    return sl<CommerceCartRepository>().getCart();
  }
}
