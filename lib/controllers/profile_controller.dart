import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testproject/models/profile_model.dart';

final profileControllerProvider = Provider(
  (ref) {
    return ProfileController(
      ref: ref,
    );
  },
);

final walletBalanceProvider = StateProvider<String>(
  (ref) => "0",
);

final profilePicProvider = StateProvider<String>(
  (ref) =>
      "https://firebasestorage.googleapis.com/v0/b/test-project-e3cbe.appspot.com/o/profilePic.jpeg?alt=media&token=d2e19351-8331-4148-bcea-9da705f8f5ad&_gl=1*l4tg2g*_ga*MTU5MzAyNDQ4NS4xNjg1NjQ4OTM3*_ga_CW55HF8NVT*MTY4NTY4MjQwOS4yLjEuMTY4NTY4MzA3Mi4wLjAuMA..",
);

class ProfileController {
  final ProviderRef ref;
  ProfileController({
    required this.ref,
  });
  Future<ProfileModel?> userInfo() async {
    final userDoc = FirebaseFirestore.instance
        .collection('users')
        .doc('RixB2iPWmegMTe1BPaax');
    final snapshot = await userDoc.get();
    if (snapshot.exists) {
      final user = ProfileModel.fromMap(snapshot.data()!);
      ref.read(walletBalanceProvider.notifier).state = user.walletbalance!;
      ref.read(profilePicProvider.notifier).state = user.profilepic!;
      return user;
    }
    return null;
  }
}
