class ProductModel {
  String? name;
  String? id;
  int? mRP;
  int? discount;
  String? qPO;
  String? details;
  List<String>? images;
  List<String>? production;
  List<String>? manufacturing;
  List<String>? delivery;

  ProductModel({
    this.name,
    this.id,
    this.mRP,
    this.discount,
    this.qPO,
    this.details,
    this.images,
    this.production,
    this.manufacturing,
    this.delivery,
  });

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      name: map['name'],
      id: map['id'],
      mRP: map['MRP']?.toInt(),
      discount: map['discount']?.toInt(),
      qPO: map['QPO'],
      details: map['details'],
      images: List<String>.from(map['images']),
      production: map['production']== null
          ? []
          : List<String>.from(map['production']),
      manufacturing: map['manufacturing']== null
          ? []
          : List<String>.from(map['manufacturing']),
      delivery:
          map['delivery']== null ? [] : List<String>.from(map['delivery']),
    );
  }
}
