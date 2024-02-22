// ignore_for_file: library_private_types_in_public_api, unused_element, deprecated_member_use, prefer_const_constructors, unnecessary_string_interpolations

import 'package:circle_flags/circle_flags.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:task/components/buttons/gardient_button.dart';
import 'package:task/components/text.dart';
import 'package:task/components/video_widget.dart';
import 'package:task/models/post_model.dart';
import 'package:task/utils/colors.dart';
import 'package:task/views/home/home_controller.dart';
import 'package:task/views/home/partials.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int postPosition = 0;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      autoRemove: false,
      builder: (controller) => Scaffold(
        body: Stack(
          children: [
            PageView.builder(
              scrollDirection: Axis.vertical,
              controller: controller.pageController,
              itemCount: controller.posts.length,
              itemBuilder: (context, postIndex) {
                return Stack(
                  children: [
                    PageView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.posts[postIndex].images.length,
                      itemBuilder: (context, videoIndex) {
                        if (videoIndex == 0) {
                          return VideoPlayerWidget(
                            videoUrl: controller.posts[postIndex].postVideo,
                            post: controller.posts[postIndex],
                          );
                        } else {
                          return Image.network(
                              'https://dummyimage.com/600x400/bfbfbf/000000&text=Dummy+image+as+no+URL+found+in+api');
                        }
                      },
                      onPageChanged: (int videoPosition) {
                        postPosition = videoPosition;
                        setState(() {});
                      },
                    ),
                    right(context, controller.posts[postIndex]),
                    _bottom(controller.posts[postIndex])
                  ],
                );
              },
              onPageChanged: (int position) {
                setState(() {
                  controller.pagePosition = position;
                  postPosition = 0;
                });
              },
            ),
            top()
          ],
        ),
      ),
    );
  }

  //! Bottom Widget
  Widget _bottom(PostModel post) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        padding: EdgeInsets.all(8),
        width: double.infinity,
        height: 200,
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TtText(text: '${post.name}', size: 16),
              ],
            ),
            Text(
              'AED ${post.price}',
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.w700, color: yellow),
            ),
            Gap(6),
            SizedBox(
                width: Get.width * 0.5,
                child: TtText(text: '${post.hashtagTitles}', size: 12)),
            Gap(6),
            Row(
              children: [
                SizedBox(
                  height: 15,
                  child: FittedBox(fit: BoxFit.cover, child: CircleFlag('ae')),
                ),
                TtText(text: ' ${post.country}', size: 12),
              ],
            ),
            SizedBox(height: 6),
            GradientButton(
              title: 'view website',
              onPressed: () {},
              buttonwidth: 0.4,
              radius: 10.0,
              buttonHeight: 40.0,
              textColor: white,
            ),
            Gap(12),
            Row(
              children: [
                for (int i = 0; i < post.images.length; i++)
                  i == postPosition
                      ? buildPageIndicator(true)
                      : buildPageIndicator(false),
              ],
            )
          ],
        ),
      ),
    );
  }
}
