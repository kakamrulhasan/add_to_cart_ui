import 'package:flutter/foundation.dart';
import 'package:flutter_application_12/data/model/product_showcase_view_state.dart';

class ProductShowcaseViewModel extends ChangeNotifier {
  ProductShowcaseViewState get state => const ProductShowcaseViewState(
    brandLogoAsset: 'assets/nike.png',
    trailingIconAsset: 'assets/four.png',
    menuXAsset: 'assets/menu_x.png',
    menuYAsset: 'assets/menu_y.png',
    shoeAsset: 'assets/shoes.png',
    title: "Vomero 16 Men's Road",
    subtitle: 'Running Shoes',
    category: 'Sports/Running Shoe',
    rating: '4.6',
    currentPrice: r'$155',
    previousPrice: r'$210',
    discountLabel: '25%OFF',
    description:
        'Air Jordans stand for style, self-expression, and authenticity. Every release carries its own story, blending innovation with heritage.',
    brandText: 'NIKE AIR',
  );
}
