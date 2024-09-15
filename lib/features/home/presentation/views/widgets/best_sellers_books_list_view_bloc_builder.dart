import 'package:bookly/features/home/presentation/manager/best_sellers_books_cubit/best_sellers_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_list_view.dart';

class BestSellersListViewBlocBuilder extends StatelessWidget {
  const BestSellersListViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellersBooksCubit,BestSellersBooksStates>(
        builder:(context,state) {
          if(state is BestSellersBooksSuccessState) {
            return BestSellerListView(books: state.books,);
          } else if(state is BestSellersBooksFailureState) {
            return Center(child: Text(state.errorMessage));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        }
    );
  }
}