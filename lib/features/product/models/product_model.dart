import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_model.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String id,
    required String title,
    required double price,
    required String image,
    required double rating,
    @Default(false) bool isFavorite,
    @Default(false) bool isPopular,
    String? description,
    @Default(0) int stock,
    @Default([]) List<String> categories,

    // Add a list for additional images
    @Default([]) List<String> additionalImages,

    // other fields...
  }) = _Product;
}
