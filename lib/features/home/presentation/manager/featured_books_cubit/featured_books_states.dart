
part of 'featured_books_cubit.dart';

abstract class FeaturedBooksStates{}

class FeaturedBooksInitialState extends FeaturedBooksStates{}

class FeaturedBooksLoadingState extends FeaturedBooksStates{}

class FeaturedBooksPaginationLoadingState extends FeaturedBooksStates{}

class FeaturedBooksSuccessState extends FeaturedBooksStates{
  final List<BookEntity> books;

  FeaturedBooksSuccessState(this.books);
}

class FeaturedBooksFailureState extends FeaturedBooksStates{
  final String errorMessage;

  FeaturedBooksFailureState(this.errorMessage);
}

class FeaturedBooksPaginationFailureState extends FeaturedBooksStates{
  final String errorMessage;

  FeaturedBooksPaginationFailureState(this.errorMessage);
}