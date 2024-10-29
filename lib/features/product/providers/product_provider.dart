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
          title: 'Example Product',
          price: 99.99,
          image: 'assets/images/product1.jpg',
          rating: 4.5,
        ),
      ];

  void addProduct(Product product) {
    state = [...state, product];
  }

  void removeProduct(String id) {
    state = state.where((product) => product.id != id).toList();
  }
}
