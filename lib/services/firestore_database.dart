import 'dart:async';
import 'dart:io';

import 'package:complaint_raiser/models/category_model.dart';
import 'package:complaint_raiser/services/firestore_path.dart';
import 'package:complaint_raiser/services/storage_database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image/image.dart' as Im;

import 'firestore_services.dart';

String documentIdFromCurrentDate() => DateTime.now().toIso8601String();

/*
This is the main class access/call for any UI widgets that require to perform
any CRUD activities operation in FirebaseFirestore database.
This class work hand-in-hand with FirestoreService and FirestorePath.

Notes:
For cases where you need to have a special method such as bulk update specifically
on a field, then is ok to use custom code and write it here. For example,
setAllTodoComplete is require to change all todos item to have the complete status
changed to true.

 */
class FirestoreDatabase {
  FirestoreDatabase();

  final _firestoreService = FirestoreService.instance;

  //Method to create/update todoModel

  // Future<ProductModel> getProduct(String id) async {
  //   print(id);
  //   DocumentSnapshot doc =
  //       await _firestoreService.getDocument(path: FirestorePath.product(id));
  // print(doc.exists);
  // print(doc.id);
  //   return ProductModel.fromDoc(doc, doc.id);
  // }
  //
  // Future<void> setProduct(ProductModel product) async {
  //   await _firestoreService.set(
  //     path: FirestorePath.product(product.id),
  //     data: product.toMap(),
  //   );
  // }
  //
  // // Future<List<ProductModel>> getProducts () async {
  // //   List<QueryDocumentSnapshot<Object?>> snapshots = await _firestoreService.getCollection(path: FirestorePath.products());
  // //   // List<ProductModel> products
  // // }
  //
  // Future<void> deleteProduct(
  //     {required String id,
  //     required StorageDatabase storageDatabase,
  //     required String imageUrl}) async {
  //   await _firestoreService.deleteData(path: FirestorePath.product(id));
  //   await storageDatabase.deleteImageFromUrl(imageUrl);
  // }
  //
  // Future<void> setCategories(CategoriesModel categories) async {
  //   await _firestoreService.set(
  //     path: FirestorePath.categories(),
  //     data: categories.toMap(),
  //   );
  // }
  //
  // Future<void> deleteCategory(
  //     {required CategoriesModel categories,
  //     required String imageUrl,
  //     required StorageDatabase storageDatabase}) async {
  //   await _firestoreService.set(
  //     path: FirestorePath.categories(),
  //     data: categories.toMap(),
  //   );
  //   await storageDatabase.deleteImageFromUrl(imageUrl);
  // }
  //
  // Future<CategoriesModel> getCategories() async {
  //   DocumentSnapshot snapshot =
  //       await _firestoreService.getDocument(path: FirestorePath.categories());
  //   if (!snapshot.exists) return CategoriesModel(categories: []);
  //   CategoriesModel category = CategoriesModel.fromMap(snapshot, 'categories');
  //   return category;
  // }
  //
  // Future<void> setIngredient(IngredientsModel ingredients) async {
  //   await _firestoreService.set(
  //     path: FirestorePath.ingredients(),
  //     data: ingredients.toMap(),
  //   );
  // }
  //
  // Future<IngredientsModel> getIngredients() async {
  //   DocumentSnapshot snapshot =
  //       await _firestoreService.getDocument(path: FirestorePath.ingredients());
  //   if (!snapshot.exists) return IngredientsModel(ingredients: []);
  //   IngredientsModel ingredients = IngredientsModel.fromMap(snapshot);
  //   return ingredients;
  // }
  //
  // Future<void> setCart(CartModel cart) async {
  //   await _firestoreService.set(
  //     path: FirestorePath.cart(cart.uid),
  //     data: cart.toMap(),
  //   );
  // }
}
