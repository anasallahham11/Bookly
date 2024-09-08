import 'package:bookly/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../entities/book_entity.dart';

class FetchFeaturedBooksUseCase{
  final HomeRepo homeRepo;
  FetchFeaturedBooksUseCase(this.homeRepo);

  Future<Either<Failure,List<BookEntity>>> fetchFeaturedBooks(){
    //additional code can be added
    return homeRepo.fetchFeaturedBooks();
  }
}