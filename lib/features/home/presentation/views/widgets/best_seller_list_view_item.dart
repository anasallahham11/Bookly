import 'package:bookly/core/utils/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/style_manager.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){GoRouter.of(context).push(RoutesManager.bookDetailsRoute);},
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5/4,
              child: Container(
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(image: AssetImage(AssetsManager.book6),fit: BoxFit.fill)
                ),
              ),
            ),
            const SizedBox(width: 30,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      "Alone : a true story ",
                      style: getSemiBoldStyle(color: ColorManager.white),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3,),
                  Text(
                    "Anas Allahham",
                    style: getMediumStyle(color: ColorManager.white),
                  ),
                  const SizedBox(height: 3,),
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        "19.99 \$",
                        style: getBoldStyle(color: ColorManager.white),
                      ),
                      const Spacer(),
                      const BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

