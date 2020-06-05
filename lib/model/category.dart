class Category {
  String imageUrl;
  String categoryName;
}

List<Category> getCategories() {
  List<Category> categories = List<Category>();
  Category category;

  //1
  category = new Category();
  category.categoryName = "Business";
  category.imageUrl =
      "https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80";
  categories.add(category);

  //2
  category = new Category();
  category.categoryName = "Entertainment";
  category.imageUrl =
      "https://images.unsplash.com/photo-1499364615650-ec38552f4f34?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2166&q=80";
  categories.add(category);

  //3
  category = new Category();
  category.categoryName = "General";
  category.imageUrl =
      'https://images.unsplash.com/photo-1452421822248-d4c2b47f0c81?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2167&q=80';
  categories.add(category);

  //4
  category = new Category();
  category.categoryName = "Health";
  category.imageUrl =
      'https://images.unsplash.com/photo-1505751172876-fa1923c5c528?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80';
  categories.add(category);

  //5
  category = new Category();
  category.categoryName = "Science";
  category.imageUrl =
      'https://images.unsplash.com/photo-1567427018141-0584cfcbf1b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80';
  categories.add(category);

  //5
  category = new Category();
  category.categoryName = "Sports";
  category.imageUrl =
      'https://images.unsplash.com/photo-1552667466-07770ae110d0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80';
  categories.add(category);

  //6
  category = new Category();
  category.categoryName = "Technology";
  category.imageUrl =
      'https://images.unsplash.com/photo-1496171367470-9ed9a91ea931?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80';
  categories.add(category);

  return categories;
}
