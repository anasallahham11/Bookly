import 'package:bookly/core/utils/color_manager.dart';
import 'package:bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_list_view_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/book_entity.dart';
import 'featured_books_list_view.dart';

class FeaturedBooksListViewBlocConsumer extends StatefulWidget {
  const FeaturedBooksListViewBlocConsumer({
    super.key,
  });

  @override
  State<FeaturedBooksListViewBlocConsumer> createState() => _FeaturedBooksListViewBlocConsumerState();
}

class _FeaturedBooksListViewBlocConsumerState extends State<FeaturedBooksListViewBlocConsumer> {

  List<BookEntity> books=[];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit,FeaturedBooksStates>(
        listener: (context,state){
          if(state is FeaturedBooksSuccessState){
            books.addAll(state.books);
          }
          if(state is FeaturedBooksPaginationFailureState){
            showToast(text: state.errorMessage, state: ToastStates.error);
          }
        },
        builder:(context,state){
          if( state is FeaturedBooksSuccessState ||
              state is FeaturedBooksPaginationLoadingState ||
              state is FeaturedBooksPaginationFailureState
          ) {
            return FeaturedBooksListView(books:books,);
          } else if(state is FeaturedBooksFailureState) {
            return Center(child: Text(state.errorMessage));
          } else {
            return const FeaturedBooksListViewLoadingIndicator();
          }
        }
    );
  }
}