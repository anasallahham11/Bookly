import 'package:flutter/material.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.close_rounded)),
        const Spacer(),
        IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart)),

      ],
    );
  }
}