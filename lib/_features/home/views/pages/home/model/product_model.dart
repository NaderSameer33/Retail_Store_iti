import '../../../../../../helper/logic/app_assets.dart';

class ProductModel {
  final String image, title, price;
  String? weight;
  ProductModel({
    required this.image,
    required this.price,
    required this.title,
    this.weight,
  });

  static List<ProductModel> productList = [
    ProductModel(
      image: AppAssets.appleImage,
      price: r'$4.99',
      title: 'Red apple',
      weight: '1 kg pricing',
    ),
    ProductModel(
      image: AppAssets.bananaImage,
      price: r'$ 5.99',
      title: 'Orginal Banana',
      weight: '1 kg pricing',
    ),
    ProductModel(
      image: 'assets/images/avo.png',
      price: r'$ 4.99',
      title: 'Avocado Bowl',
      weight: '1 kg pricing',
    ),
    ProductModel(
      image: AppAssets.bananaImage,
      price: r'$ 5.99',
      title: 'Orginal Banana',
      weight: '1 kg pricing',
    ),
    ProductModel(
      image: AppAssets.salmonImage,
      price: r'$ 5.99',
      title: 'Salmon',
      weight: '1 kg pricing',
    ),
  ];
}
