import 'dart:math';

import 'package:app/features/auth/models/user_model.dart';
import 'package:faker/faker.dart';

import 'package:faker/faker.dart' as faker;

class UserService {
  static List<UserModel> users() {
    return List.generate(
      10,
      (index) => UserModel(
          fullName: faker.faker.company.name(),
          profilePhoto:
              'https://picsum.photos/id/${(index == 5 || index == 7 ? index = ((index * 2) + 200) : index + 200)}/200/300',
          email: faker.faker.address.toString(),
          password: faker.faker.animal.name(),
          dob: faker.faker.date.toString(),
          contacts: faker.faker.phoneNumber.toString(),
          gender: Random().nextBool() ? 'Male' : 'Female'),
    );
  }
}
