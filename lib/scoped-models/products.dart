import 'package:scoped_model/scoped_model.dart';
import '../models/product.dart';

class ProductsModel extends Model {
  List<Product> _products = [];

  List<Product> get products {
    return List.from(_products);
  }

  void addProduct(Product product) {
      _products.add(product);
  }

  void deleteProduct(int productIndex) {
      _products.removeAt(productIndex);
  }

  void updateProduct(Product product, int productIndex) {
      _products[productIndex] = product;
  }
}