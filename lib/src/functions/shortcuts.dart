import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

bool routePage( Widget page, {bool canOnlySwipeFromEdge = false} ) {

  Navigator.of(Get.context!).push(SwipeablePageRoute(
    canOnlySwipeFromEdge: canOnlySwipeFromEdge,
    builder: (BuildContext context) => page,
  ));

  return true;
}