
part of 'best_sellers_books_cubit.dart';

abstract class BestSellersBooksStates{}

class BestSellersBooksInitialState extends BestSellersBooksStates{}

class BestSellersBooksLoadingState extends BestSellersBooksStates{}

class BestSellersBooksSuccessState extends BestSellersBooksStates{
  final List<BookEntity> books;

  BestSellersBooksSuccessState(this.books);
}

class BestSellersBooksFailureState extends BestSellersBooksStates{
  final String errorMessage;

  BestSellersBooksFailureState(this.errorMessage);
}