import 'package:freezed_annotation/freezed_annotation.dart';
part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const Product._();
  const factory Product({
    required int id,
    required String image,
    required String name,
    required String type,
    required double price,
    required int quantity,
  }) = _Product;
}
