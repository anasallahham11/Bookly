import 'package:bookly/core/utils/font_manager.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/style_manager.dart';
import 'custom_search_text_field.dart';
import 'search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const CustomSearchTextField(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text("Search Result :",style: getSemiBoldStyle(color: ColorManager.white,fontSize: FontSize.s20),),
          ),
          const Expanded(child: SearchResultListView(books: [],)),
        ],
      ),
    );
  }
}

