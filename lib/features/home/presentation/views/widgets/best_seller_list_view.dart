import 'package:flutter/material.dart';

import '../../../domain/entities/book_entity.dart';
import 'book_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key, required this.books}) : super(key: key);

  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: books.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context,index){
        return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
          child: BookListViewItem(book: books[index],),
        );
      },
    );
  }
}

