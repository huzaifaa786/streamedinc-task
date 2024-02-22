// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:task/components/buttons/circular_button.dart';
import 'package:task/components/text.dart';
import 'package:task/components/top_card.dart';
import 'package:task/models/post_model.dart';
import 'package:task/utils/colors.dart';

  //! Top Widget
  Widget top() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const TopCard(
            icons: Icon(Icons.add),
            text: 'Add Listing',
          ),
          TopCard(
            icons: SvgPicture.asset('assets/images/Search.svg'),
            text: 'Search',
          ),
          TopCard(
            icons: SvgPicture.asset(
              'assets/images/Notification.svg',
              color: white,
            ),
            text: 'Notification',
          ),
          TopCard(
            icons: Padding(
              padding: const EdgeInsets.all(2),
              child: Image.asset('assets/images/onboard1.png'),
            ),
            text: 'Electronics',
          ),
          TopCard(
            icons: Padding(
              padding: const EdgeInsets.all(2),
              child: Image.asset('assets/images/onboard1.png'),
            ),
            text: 'Electronics',
          ),
        ],
      ),
    );
  }


  //! Right Widget
  Widget right(BuildContext context, PostModel post) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        width: 60,
        height: MediaQuery.of(context).size.height / 2,
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularGradientIconButton(
                onPressed: () {},
                radius: 30.0,
                buttonHeight: 50.0,
                icon: SvgPicture.asset('assets/images/offer.svg')),
            Gap(6),
            TtText(text: 'offers', size: 12),
            Gap(10),
            CircularGradientIconButton(
                onPressed: () {},
                radius: 30.0,
                buttonHeight: 50.0,
                icon: Icon(
                  CupertinoIcons.heart,
                  size: 24,
                )),
            Gap(6),
            TtText(text: '${post.likes}', size: 12),
            Gap(10),
            CircularGradientIconButton(
                onPressed: () {},
                radius: 30.0,
                buttonHeight: 50.0,
                icon: SvgPicture.asset('assets/images/comment.svg')),
            Gap(6),
            TtText(text: '${post.comments}', size: 12),
            Gap(10),
            CircularGradientIconButton(
                onPressed: () {},
                radius: 30.0,
                buttonHeight: 50.0,
                icon: SvgPicture.asset('assets/images/share.svg')),
            Gap(6),
            TtText(text: '${post.shares}', size: 12),
            Gap(10),
            Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                color: darkBlue,
                borderRadius: BorderRadius.circular(30),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(post.profileImage, fit: BoxFit.cover),
              ),
            )
          ],
        ),
      ),
    );
  }


//! Post Indicator
Widget buildPageIndicator(bool isCurrentPage) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 4.0),
    height: 8,
    width: isCurrentPage ? 15 : 8,
    decoration: BoxDecoration(
      color: isCurrentPage ? yellow : white,
      border: Border.all(color: isCurrentPage ? yellow : white),
      borderRadius: BorderRadius.circular(30),
    ),
  );
}