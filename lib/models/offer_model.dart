class OfferModel {
  String? id;
  String? name;
  String? image;

  OfferModel({
    this.id,
    this.name,
    this.image,
  });

  factory OfferModel.fromMap(Map<String, dynamic> map) {
    return OfferModel(
      id: map['id'],
      name: map['name'],
      image: map['image'],
    );
  }
}
