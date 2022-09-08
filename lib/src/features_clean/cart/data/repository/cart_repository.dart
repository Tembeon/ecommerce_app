import '../../../../core/service_locator/service_locator.dart';
import '../../domain/models/cart_content/cart_content.dart';
import '../../domain/repository/cart_repository.dart';
import '../datasource/cart_value_from_server.dart';

class CommerceCartRepository implements ICartRepository {
  @override
  Future<CartContent> getCart() async {
    var response = await sl<CartValueFromServer>().getCartValue();

    // convert raw answer to [CartContent]
    return CartContent(
      cartItems: response.cartItems
          .map<CartItem>(
            (item) => CartItem(
              image: item.images,
              name: item.title,
              price: item.price,
            ),
          )
          .toList(),
      deliveryPrice: response.delivery,
      totalPrice: response.total,
    );
  }
}
