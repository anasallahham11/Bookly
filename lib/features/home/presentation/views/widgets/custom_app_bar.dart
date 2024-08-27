import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets_manager.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0,right:20,top: 50,bottom: 20),
      child: Row(
        children: [
          Image.asset(AssetsManager.logo,height: 40,),
          const Spacer(),
          IconButton(
            onPressed: (){},
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}