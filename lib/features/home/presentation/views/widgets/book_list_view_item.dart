import 'package:bookly/core/utils/font_manager.dart';
import 'package:bookly/core/utils/routes_manager.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/style_manager.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({Key? key, required this.book}) : super(key: key);


  final BookEntity book;
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  imageUrl: book.image ?? "",
                  fit: BoxFit.fill,
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
                      book.title,
                      style: getSemiBoldStyle(color: ColorManager.white),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3,),
                  Text(
                    book.author ?? "Undefined",
                    style: getMediumStyle(color: ColorManager.white),
                  ),
                  const SizedBox(height: 3,),
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        "${book.price} \$",
                        style: getBoldStyle(color: ColorManager.white,fontSize: FontSize.s20),
                      ),
                      const Spacer(),
                       BookRating(rating: "${book.rating}"),
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

