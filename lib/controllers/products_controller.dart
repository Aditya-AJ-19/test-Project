import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testproject/models/product_model.dart';

final productControllerProvider = Provider(
  (ref) {
    return ProductController();
  },
);

class ProductController {
  Stream<List<ProductModel>> getProducts() => FirebaseFirestore.instance
      .collection('products')
      .snapshots()
      .map((snapshot) => snapshot.docs
          .map((doc) => ProductModel.fromMap(doc.data()))
          .toList());
}
