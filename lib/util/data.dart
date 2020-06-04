import 'package:muchene_news/model/category.dart';

List<Category> categories = categoriesData
    .map((item) => Category(item['categoryName'], item['imageUrl']))
    .toList();

var categoriesData = [
  {
    'categoryName': 'Business',
    'imageUrl':
        'https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2251&q=80'
  },
  {
    'categoryName': 'Entertainment',
    'imageUrl':
        'https://images.unsplash.com/photo-1499364615650-ec38552f4f34?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2166&q=80'
  },
  {
    'categoryName': 'General',
    'imageUrl':
        'https://images.unsplash.com/photo-1452421822248-d4c2b47f0c81?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2167&q=80'
  },
];
