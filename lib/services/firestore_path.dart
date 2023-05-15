class FirestorePath {

  static String product(String productId) => 'products/$productId';
  static String products() => 'products';
  static String ingredients() => 'constants/ingredients';
  static String categories() => 'constants/categories';
  static String cart(String uid) => 'carts/$uid';
  // static String categoriesCollection() => 'constants/';
}

class StoragePath {
  static String category(String fileName) => 'category/$fileName';
  static String product(String fileName) => 'product/$fileName';
}