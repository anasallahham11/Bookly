import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/style_manager.dart';

class BookRating extends StatelessWidget {
  const BookRating({this.mainAxisAlignment=MainAxisAlignment.start,Key? key}) : super(key: key);
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(FontAwesomeIcons.solidStar,color: ColorManager.gold,size: 16,),
        const SizedBox(width: 6.3,),
        Text("4.5",style: getMediumStyle(color: ColorManager.white),),
        const SizedBox(width: 5.0,),
        Text("(2223)",style: getMediumStyle(color: ColorManager.white.withOpacity(0.5)),)
      ],
    );
  }
}