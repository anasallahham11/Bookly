
import 'package:bookly/features/home/domain/usecases/fetch_featured_books_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entities/book_entity.dart';

part 'featured_books_states.dart';
class FeaturedBooksCubit extends Cubit<FeaturedBooksStates>{
  FeaturedBooksCubit(this.featuredBooksUseCase) : super(FeaturedBooksInitialState());
  final FetchFeaturedBooksUseCase featuredBooksUseCase;

  Future<void> fetchFeaturedBooks({int pageNumber=0}) async{
    if(pageNumber==0) {
      emit(FeaturedBooksLoadingState());
    }else{
      emit(FeaturedBooksPaginationLoadingState());
    }
    var result = await featuredBooksUseCase.call(pageNumber);
    result.fold(
            (failure) {
              if(pageNumber==0) {
                emit(FeaturedBooksFailureState(failure.message));
              }else{
                emit(FeaturedBooksPaginationFailureState(failure.message));
              }
            },
            (books) => emit(FeaturedBooksSuccessState(books))
    );
  }
}