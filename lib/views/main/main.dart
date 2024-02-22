// ignore_for_file: prefer_typing_uninitialized_variables, unused_field, unused_element, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:task/components/buttons/icon_button.dart';
import 'package:task/utils/colors.dart';
import 'package:task/views/home/home_view.dart';
import 'package:task/views/theme/theme_view.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> with RouteAware {
  int _navigationMenuIndex = 0;

  final List<Widget> _fragments = [
    const HomeView(),
    const ThemeView(),
    const ThemeView(),
    const ThemeView(),
  ];

  Widget _buildNavigationBarItem(int index, String iconPath, String label) {
    return InkWell(
      onTap: () {
        setState(() {
          _navigationMenuIndex = index;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.15,
        color: darkBlue,
        child: Center(
          child: InkWell(
            onTap: () {
              setState(() {
                _navigationMenuIndex = index;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _navigationMenuIndex == 0
                    ? SvgPicture.asset(
                        iconPath,
                        fit: BoxFit.scaleDown,
                        height: 20,
                        width: 20,
                      )
                    : SvgPicture.asset(
                        iconPath,
                        fit: BoxFit.scaleDown,
                        height: 20,
                        width: 20,
                        color: _navigationMenuIndex == index ? lightBlue : grey,
                      ),
                const Gap(4),
                Text(
                  label,
                  style: TextStyle(
                    color: _navigationMenuIndex == index ? lightBlue : grey,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        body: SafeArea(
          child: _fragments[_navigationMenuIndex],
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 50,
          surfaceTintColor: darkBlue,
          color: darkBlue,
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _buildNavigationBarItem(
                    0, 'assets/images/homeSelected.svg', 'Home'),
                _buildNavigationBarItem(
                    1, 'assets/images/Search.svg', 'Discover'),
                GradientIconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.add,
                      color: Colors.black,
                      size: 20,
                    ),
                    buttonwidth: 0.15,
                    buttonHeight: 40.0),
                _buildNavigationBarItem(2, 'assets/images/deals.svg', 'Deals'),
                _buildNavigationBarItem(
                    3, 'assets/images/Profile.svg', 'Profile'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
