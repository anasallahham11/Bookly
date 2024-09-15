import 'package:flutter/material.dart';

import '../../../domain/entities/book_entity.dart';
import 'custom_book_image_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key, required this.books}) : super(key: key);

  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 5),
              child: CustomBookImageItem(image:books[index].image ?? ''),
            );
          }
      ),
    );
  }
}