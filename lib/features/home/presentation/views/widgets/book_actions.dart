import 'package:flutter/material.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/widgets/custom_button.dart';

class BookActions extends StatelessWidget {
  const BookActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            text: "19.99\$",
            textColor: ColorManager.black,
            backgroundColor: ColorManager.white,
            fontSize: 22,
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(12),bottomLeft: Radius.circular(12)),
          ),
        ),
        Expanded(
          child: CustomButton(
            text: "Free Preview",
            textColor: ColorManager.white,
            backgroundColor: ColorManager.purple4,
            fontSize: 18,
            borderRadius: const BorderRadius.only(topRight: Radius.circular(12),bottomRight: Radius.circular(12)),
          ),
        )

      ],
    );
  }
}