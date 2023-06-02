class ProfileModel {
  String? id;
  String? name;
  String? email;
  String? number;
  String? profilepic;
  String? walletbalance;

  ProfileModel({
    this.id,
    this.name,
    this.email,
    this.number,
    this.profilepic,
    this.walletbalance,
  });

  factory ProfileModel.fromMap(Map<String, dynamic> map) {
    return ProfileModel(
      id: map['id'],
      name: map['name'],
      email: map['email'],
      number: map['number'],
      profilepic: map['profilepic'],
      walletbalance: map['walletbalance'],
    );
  }
}
