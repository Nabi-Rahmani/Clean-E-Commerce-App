// product_provider.dart
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/product_model.dart';

// This part declaration must match your file name
part 'product_provider.g.dart';

@riverpod
class ProductDataNotifier extends _$ProductDataNotifier {
  @override
  List<Product> build() => [
        const Product(
          id: '1',
          title: 'Main Product',
          price: 99.99,
          image:
              'https://www.aptronixindia.com/media/catalog/product/cache/31f0162e6f7d821d2237f39577122a8a/i/p/iphone_16_teal_pdp_image_position_1__en-in_1_6-removebg-preview.png',
          rating: 4.5,
          proType: 'Phone',
        ),
        const Product(
          id: '2',
          title: 'new Product',
          price: 99.99,
          image:
              'https://www.aptronixindia.com/media/catalog/product/cache/31f0162e6f7d821d2237f39577122a8a/i/p/iphone_16_teal_pdp_image_position_1__en-in_1_6-removebg-preview.png',
          rating: 4.5,
          proType: 'Mobiel',
        ),
        const Product(
          id: '3',
          title: 'Larg Product',
          price: 99.99,
          image:
              'https://www.aptronixindia.com/media/catalog/product/cache/31f0162e6f7d821d2237f39577122a8a/i/p/iphone_16_teal_pdp_image_position_1__en-in_1_6-removebg-preview.png',
          rating: 4.5,
          proType: 'Mobiel',
        ),
        const Product(
          id: '4',
          title: 'L Product',
          price: 99.99,
          image:
              'https://www.aptronixindia.com/media/catalog/product/cache/31f0162e6f7d821d2237f39577122a8a/i/p/iphone_16_teal_pdp_image_position_1__en-in_1_6-removebg-preview.png',
          rating: 4.5,
          proType: 'Mobiel',
        ),
      ];

  void addProduct(Product product) {
    state = [...state, product];
  }

  void removeProduct(String id) {
    state = state.where((product) => product.id != id).toList();
  }
}
