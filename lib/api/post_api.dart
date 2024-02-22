// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:task/api/api.dart';
import 'package:task/models/post_model.dart';
import 'package:task/utils/string.dart';

class PostApi {
  Future<List<PostModel>> fetchAllPosts() async {
    var url = BASE_URL + 'home-posts-test';
    var data = {};

    var response = await Api.execute(
      url: url,
      data: data,
    );
    print(response);
    List<PostModel> posts = [];

    if (response['status']) {
      for (var item in response['posts']) {
        PostModel post = PostModel.fromJson(item);
        posts.add(post);
      }
    }

    return posts;
  }
}
