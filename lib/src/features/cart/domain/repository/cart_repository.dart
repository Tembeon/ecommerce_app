import '../models/cart_content/cart_content.dart';

abstract class ICartRepository {
  /// Returns cart content.
  Future<CartContent> getCart();
}
