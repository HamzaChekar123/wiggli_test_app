import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_details.freezed.dart';

@freezed
class ProductDetails with _$ProductDetails {
  const ProductDetails._();
  const factory ProductDetails({
    required int id,
    required String name,
    required String description,
    required double price,
    required String imageUrl,
    required int reviews,
    required double rating,
  }) = _ProductDetails;
}
