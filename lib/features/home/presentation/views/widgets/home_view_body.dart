import 'package:bookly/core/utils/color_manager.dart';
import 'package:bookly/core/utils/style_manager.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const CustomAppBar(),
                const FeaturedBooksListView(),
                const SizedBox(height: 30,),
                Text("Best Sellers:",style: getSemiBoldStyle(color: ColorManager.white,fontSize: 20),),
                const SizedBox(height: 20,),
              ],
            ),
          ),
        ),
        const SliverFillRemaining(
          child: BestSellerListView(),
        )
      ],
    );

  }
}









