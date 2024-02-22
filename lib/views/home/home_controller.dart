import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/api/post_api.dart';
import 'package:task/models/post_model.dart';

class HomeController extends GetxController {
  PageController pageController = PageController();
  List<PostModel> posts = [];
  int pagePosition = 0;
  int current = 0;

  @override
  void onInit() {

    fetchPosts();
    super.onInit();
  }

  @override
  void dispose() {
    pageController.dispose();

    super.dispose();
  }

  fetchPosts() async {
    posts = await PostApi().fetchAllPosts();
    update();
  }
}
