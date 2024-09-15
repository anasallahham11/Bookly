import 'package:bookly/core/utils/color_manager.dart';
import 'package:flutter/material.dart';

class CustomBookImageItemLoadingIndicator extends StatelessWidget {
  const CustomBookImageItemLoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6/4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(color: ColorManager.lightGrey,),
      ),
    );
  }
}
