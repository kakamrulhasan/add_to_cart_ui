class ProductShowcaseViewState {
  const ProductShowcaseViewState({
    required this.brandLogoAsset,
    required this.trailingIconAsset,
    required this.menuXAsset,
    required this.menuYAsset,
    required this.shoeAsset,
    required this.title,
    required this.subtitle,
    required this.category,
    required this.rating,
    required this.currentPrice,
    required this.previousPrice,
    required this.discountLabel,
    required this.description,
    required this.brandText,
  });

  final String brandLogoAsset;
  final String trailingIconAsset;
  final String menuXAsset;
  final String menuYAsset;
  final String shoeAsset;
  final String title;
  final String subtitle;
  final String category;
  final String rating;
  final String currentPrice;
  final String previousPrice;
  final String discountLabel;
  final String description;
  final String brandText;
}
