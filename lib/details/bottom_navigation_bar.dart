import 'package:flutter/material.dart';
import 'package:udemy_flutter_sns/constants/bottom_navigation_bar_elements.dart';
import 'package:udemy_flutter_sns/models/bottom_navigation_bar_model.dart';

class SNSBottomNavigationBar extends StatelessWidget {
  const SNSBottomNavigationBar(
      {Key? key, required this.snsBottomNavigationBarModel})
      : super(key: key);
  final SNSBottomNavigationBarModel snsBottomNavigationBarModel;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: bottomNavigationBarElements,
      type: BottomNavigationBarType.fixed,
      currentIndex: snsBottomNavigationBarModel.currentIndex,
      onTap: (idx) => snsBottomNavigationBarModel.onTabTapped(index: idx),
    );
  }
}
