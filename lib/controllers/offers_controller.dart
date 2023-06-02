import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testproject/models/offer_model.dart';

final offersControllerProvider = Provider(
  (ref) {
    return OffersController();
  },
);

class OffersController {
  Stream<List<OfferModel>> getOffers() => FirebaseFirestore.instance
      .collection('offers')
      .snapshots()
      .map((snapshot) => snapshot.docs
          .map((doc) => OfferModel.fromMap(doc.data()))
          .toList());
}