import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_app_wiggli/home/domain/product.dart';

final cartItemsProvider = StateProvider<List<Product>>(
  (ref) => <Product>[],
);
