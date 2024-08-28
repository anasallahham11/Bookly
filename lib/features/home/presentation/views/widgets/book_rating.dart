import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/style_manager.dart';

class BookRating extends StatelessWidget {
  const BookRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(FontAwesomeIcons.solidStar,color: ColorManager.pending,),
        const SizedBox(width: 6.3,),
        Text("4.5",style: getMediumStyle(color: ColorManager.white),),
        const SizedBox(width: 5.0,),
        Text("(2223)",style: getMediumStyle(color: ColorManager.grey),)
      ],
    );
  }
}