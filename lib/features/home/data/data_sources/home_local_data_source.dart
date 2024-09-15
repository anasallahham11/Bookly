import 'package:bookly/constants.dart';
import 'package:hive/hive.dart';

import '../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks({int pageNumber=0});
  List<BookEntity> fetchBestSellersBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource{

  @override
  List<BookEntity> fetchFeaturedBooks({int pageNumber=0}) {
    int startIndex=pageNumber*10;
    int endIndex=startIndex+10;
    var box = Hive.box<BookEntity>(kFeaturedBox);
    int length=box.values.length;
    if(startIndex>=length || endIndex>length) {
      return [];
    }
    return box.values.toList().sublist(startIndex,endIndex);
  }

  @override
  List<BookEntity> fetchBestSellersBooks() {
    var box = Hive.box<BookEntity>(kBestSellersBox);
    return box.values.toList();
  }


}