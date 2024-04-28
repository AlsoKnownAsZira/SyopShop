class Product {
  final int id;
  final String brand;
  final String name;
  final String price;
  final dynamic priceSign;
  final dynamic currency;
  final String imageLink;
  final String productLink;
  final String websiteLink;
  final String description;
  final int rating;
  final dynamic category;
  final String productType;
  final List<dynamic> tagList;
  final String createdAt;
  final String updatedAt;
  final String productApiUrl;
  final String apiFeaturedImage;
  final List<dynamic> productColors;

  Product({
    required this.id,
    required this.brand,
    required this.name,
    required this.price,
    required this.priceSign,
    required this.currency,
    required this.imageLink,
    required this.productLink,
    required this.websiteLink,
    required this.description,
    required this.rating,
    required this.category,
    required this.productType,
    required this.tagList,
    required this.createdAt,
    required this.updatedAt,
    required this.productApiUrl,
    required this.apiFeaturedImage,
    required this.productColors,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      brand: json['brand'],
      name: json['name'],
      price: json['price'],
      priceSign: json['price_sign'],
      currency: json['currency'],
      imageLink: json['image_link'],
      productLink: json['product_link'],
      websiteLink: json['website_link'],
      description: json['description'],
      rating: json['rating'],
      category: json['category'],
      productType: json['product_type'],
      tagList: json['tag_list'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      productApiUrl: json['product_api_url'],
      apiFeaturedImage: json['api_featured_image'],
      productColors: json['product_colors'],
    );
  }
}
