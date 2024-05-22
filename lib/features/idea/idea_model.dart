
import '../auth/models/user_model.dart';

class IdeaModel {
  int? ideaId;
  String content;
  List<String>? images;
  int upVoted;
  int downVoted;
  UserModel owner;

  IdeaModel({
    this.ideaId,
    required this.content,
    this.images,
    this.upVoted = 0,
    this.downVoted = 0,
    required this.owner,
  });

  factory IdeaModel.fromJson(Map<String, dynamic> json) {
    return IdeaModel(
        ideaId: ['ideaId'] as int,
        content: json['content'] as String,
        owner: UserModel.fromJson(json),
        upVoted: json['upVoted'],
        downVoted: json['downVoted'],
        images: (json['images'] as List<dynamic>?)
            ?.map((item) => item as String)
            .toList());
  }

  Map<String, dynamic> toMap() {
    return {'content': content, 'images': images, 'UserModel': owner.toJson()};
  }
}
