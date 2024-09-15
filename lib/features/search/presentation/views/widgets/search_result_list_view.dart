import 'package:flutter/material.dart';

import '../../../../home/domain/entities/book_entity.dart';
import '../../../../home/presentation/views/widgets/book_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key, required this.books}) : super(key: key);

  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
          child: BookListViewItem(book: books[index],),
        );
      },
    );
  }
}