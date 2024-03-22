import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../gen/assets.gen.dart';
import '../domain/filter_item.dart';
import '../domain/product.dart';

final filterItemProvider = Provider<List<FilterItem>>(
  (ref) => [
    const FilterItem(
      id: "1",
      name: "All",
    ),
    FilterItem(
      id: "2",
      name: "Gaming",
      icon: Assets.icons.svg.gaming.path,
    ),
    FilterItem(
      id: "3",
      name: "Speaker",
      icon: Assets.icons.svg.speaker.path,
    ),
    FilterItem(
      id: "3",
      name: "HeadSet",
      icon: Assets.icons.svg.headSet.path,
    ),
  ],
);

final productsProvider = Provider<List<Product>>(
  (ref) => [
    Product(
      id: 1,
      name: "Iphone 12 Pro Max",
      image: Assets.images.png.iphoneProduct.path,
      price: 100,
      type: "Apple",
      quantity: 5,
    ),
    Product(
      id: 2,
      name: "Ipad Pro 2021",
      image: Assets.images.png.ipadProduct.path,
      price: 200,
      type: "Apple",
      quantity: 4,
    ),
    Product(
      id: 2,
      name: "Speaker",
      image: Assets.images.png.ipadProduct.path,
      price: 200,
      type: "Apple",
      quantity: 1,
    ),
    Product(
      id: 3,
      name: "Macbook Pro 2021",
      image: Assets.images.png.ipadProduct.path,
      price: 924,
      type: "Apple",
      quantity: 2,
    ),
    Product(
      id: 4,
      name: "Speaker",
      image: Assets.images.png.iphoneProduct.path,
      price: 200,
      type: "Apple",
      quantity: 3,
    ),
  ],
);
