
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entities/book_entity.dart';
import '../../../domain/usecases/fetch_best_sellers_books_usecase.dart';

part 'best_sellers_books_states.dart';
class BestSellersBooksCubit extends Cubit<BestSellersBooksStates>{
  BestSellersBooksCubit(this.bestSellersBooksUseCase) : super(BestSellersBooksInitialState());
  final FetchBestSellersBooksUseCase bestSellersBooksUseCase;

  Future<void> fetchBestSellersBooks() async{
    emit(BestSellersBooksLoadingState());
    var result = await bestSellersBooksUseCase.call();
    result.fold(
            (failure) => emit(BestSellersBooksFailureState(failure.message)),
            (books) => emit(BestSellersBooksSuccessState(books))
    );
  }
}