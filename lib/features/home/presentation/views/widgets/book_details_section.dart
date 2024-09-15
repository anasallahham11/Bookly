import 'package:flutter/material.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/style_manager.dart';
import '../../../../../core/utils/values_manager.dart';
import 'book_actions.dart';
import 'book_rating.dart';
import 'custom_book_image_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.17),
          child: CustomBookImageItem(image: '',),
        ),
        const SizedBox(height: AppSize.s40,),
        Text("Frost Arch",style: getBoldStyle(color: ColorManager.white),),
        const SizedBox(height: AppSize.s8,),
        Text("Anas Allahham",style: getMediumStyle(color: ColorManager.white.withOpacity(0.7)).copyWith(fontStyle: FontStyle.italic),),
        const SizedBox(height: AppSize.s12,),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center, rating: '',),
        const SizedBox(height: AppSize.s40,),
        const BookActions(),
      ],
    );
  }
}