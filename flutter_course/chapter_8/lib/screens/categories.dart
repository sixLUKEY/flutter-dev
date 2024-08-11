import 'package:chapter_8/data/dummy_data.dart';
import 'package:chapter_8/widgets/category_grid_item.dart';
import 'package:flutter/material.dart';

class CategoriesCreen extends StatelessWidget {
  const CategoriesCreen({
    super.key,
  });

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick a category.'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          for (final cat in availableCategories)
            CategoryGridItem(category: cat),
        ],
      ),
    );
  }
}
