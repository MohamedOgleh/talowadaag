
class UserModel {
  int? uid;
  String fullName;
  String contacts;
  String profilePhoto;
  String dob;
  String gender;
  String email;
  String password;

  UserModel(
      {this.uid,
      required this.fullName,
      required this.contacts,
      required this.profilePhoto,
      required this.dob,
      required this.gender,
      required this.email,
      required this.password});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      uid: json['id'] as int,
      fullName: json['fullName'] as String,
      contacts: json['contacts'] as String,
      profilePhoto: json['profilePhoto'] as String,
      dob: json['dob'] as String,
      gender: json['gender'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fullName': fullName,
      'contacts': contacts,
      'profilePhoto': profilePhoto,
      'dob': dob,
      'gender': gender,
      'email': email,
      'password': password
    };
  }
}
