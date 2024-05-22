import 'dart:math';

import 'package:faker/faker.dart' as faker;

import '../auth/models/user_service.dart';
import 'idea_model.dart';

class IdeaService {
  static List<IdeaModel> ideas() {
    return List.generate(
      10,
      (index) => IdeaModel(
        content: faker.faker.lorem.sentence(),
        images: List.generate(Random().nextInt(5),
            (index) => 'https://picsum.photos/id/$index/200/300'),
        owner: UserService.users().elementAt(index),
        upVoted: Random().nextInt(1000),
        downVoted: Random().nextInt(1000),
      ),
    );
  }
}
