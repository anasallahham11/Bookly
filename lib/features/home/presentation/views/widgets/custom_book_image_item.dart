import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_manager.dart';

class CustomBookImageItem extends StatelessWidget {
  const CustomBookImageItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,
      child: Container(
        decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(image: AssetImage(AssetsManager.book1),fit: BoxFit.fill)
        ),
      ),
    );
  }
}