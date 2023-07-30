import 'package:flutter/material.dart';
import 'package:product_kart/product_class.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({required this.product, super.key});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.network(
                product.image,
              ),
              const SizedBox(
                  height: 8,
              ),
              ListTile(
                title: Text(
                  product.name,
                ),
                subtitle: Text(
                  '\$${product.price}',
                  style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(product.rating),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Text(
                  product.description,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
