import 'package:flutter/material.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context,index){
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
          child: BestSellerListViewItem(),
        );
      },
    );
  }
}

