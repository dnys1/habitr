import 'package:flutter/material.dart';
import 'package:habitr/models/Category.dart';
import 'package:habitr/screens/category/category_details_screen.dart';

class CategorySelectionScreen extends StatelessWidget {
  const CategorySelectionScreen({Key? key}) : super(key: key);

  static const route = '/category';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Browse')),
      body: ListView(
        children: [
          for (var category in Category.values)
            ListTile(
              title: Text(category.string),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => CategoryDetailsScreen(category),
                ));
              },
            ),
        ],
      ),
    );
  }
}
