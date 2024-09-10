import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/books_model.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:dio/dio.dart';
import '../../../../core/utils/functions/save_books.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchBestSellersBooks();
}
class HomeRemoteDataSourceImpl extends HomeRemoteDataSource{
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async{
    var response = await ApiService.getData(url: "${ApiService.baseUrl}volumes?q=programming");
    List<BookEntity> books = getBooksList(response);
    saveBooksData(books,kFeaturedBox);
    return books;
  }



  @override
  Future<List<BookEntity>> fetchBestSellersBooks() async{
    var response = await ApiService.getData(url: "${ApiService.baseUrl}volumes?Sorting=newest&q=programming");
    List<BookEntity> books = getBooksList(response);
    saveBooksData(books, kBestSellersBox);
    return books;
  }

  List<BookEntity> getBooksList(Response<dynamic>? response) {
    List<BookEntity> books=[];
    for(var bookMap in response?.data['items']){
      books.add(BooksModel.fromJson(bookMap));
    }
    return books;
  }

}