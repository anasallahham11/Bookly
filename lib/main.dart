import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/routes_manager.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/usecases/fetch_featured_books_usecase.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/utils/functions/setup_service_locator.dart';
import 'features/home/domain/usecases/fetch_best_sellers_books_usecase.dart';
import 'features/home/presentation/manager/best_sellers_books_cubit/best_sellers_books_cubit.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kBestSellersBox);
  setupServiceLocator();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(FetchFeaturedBooksUseCase(
            getIt.get<HomeRepoImpl>(),
          )),
        ),
        BlocProvider(
          create: (context) => BestSellersBooksCubit(FetchBestSellersBooksUseCase(
            getIt.get<HomeRepoImpl>(),
          )),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: RoutesManager.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}
