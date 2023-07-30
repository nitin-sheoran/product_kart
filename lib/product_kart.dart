import 'package:flutter/material.dart';
import 'package:product_kart/product_detail.dart';
import 'package:product_kart/product_class.dart';

class ProductKart extends StatefulWidget {
  const ProductKart({super.key});

  @override
  State<ProductKart> createState() => _ProductKartState();
}

class _ProductKartState extends State<ProductKart> {
  List<Product> productList = [
    Product(
      name: 'Electronic Digital Watch',
      image:
          'https://th.bing.com/th?id=OPA.0%2bX4LCj2L76HZA474C474&w=592&h=550&o=5&dpr=1.5&pid=21.1',
      price: 109.95,
      description: 'Your perfect pack for everyday use and walks in the forest.Stash your watch (up to 15 vote) in the padded sleeve,your everyday.',
      rating: '3.9',
    ),
    Product(
      name: '(32 inch) HD LED TV ',
      image:
          'https://th.bing.com/th?id=OPA.xakNiMgFk7ZHTQ474C474&w=592&h=550&o=5&dpr=1.5&pid=21.1',
      price: 22.30,
      description: 'Slim-fitting style,conterct raglon long sleeve,three-bottom henely placket,light weight & soft fabir for breathable and comfortable wearing, And Solid stitched LED with roud neck made forstyle round.',
      rating: '4.1',
    ),
    Product(
      name: 'Boat 720 Super Bass Bluetooth',
      image:
          'https://th.bing.com/th?id=OPA.Plj5ntVdI7EgWA474C474&w=220&h=220&o=5&pid=21.1',
      price: 55.99,
      description: 'great outerwear bluetooth for Spring/Autumn/Winter,suitable for many,such as working,hiking,camping,mountain/rock clamping,cycling,travelling or other outdoors,Good gift choice for you or your family member.A warm hearted love to Father member.A warm hearted love=e to after,husband or son in this Day.',
      rating: '5',
    ),
    Product(
      name: 'Mens Casual Slim Fit',
      image:
          'https://rukminim2.flixcart.com/image/2160/2160/xif0q/t-shirt/a/7/z/xxl-t-shirt22-men-mantra-original-imagpux6f2yhyngf.jpeg?q=70',
      price: 15.99,
      description: 'The color could be slightly different between on the screen and in prantice./ Please note that body build vary by person ,therefore,detailed size information should be reviewed below on the product description.',
      rating: '2.1',
    ),
    Product(
      name: 'John Hardy Womens',
      image:
          'https://5fbb4b60e5a371522c26-c46478628be7be7c70f96ec65a31d1c7.ssl.cf3.rackcdn.com/Images/ProductImages/BadRhino_White_Basic_Plain_Crew_Neck_T-Shirt_-_REG_54617_a41d.jpg',
      price: 695.00,
      description: 'jkfhjkfhsksfsfsjfjsdjkfhskhsdkhsjknjfjkhiohwka,mc nalcjal',
      rating: '4.6',
    ),
    Product(
      name: 'Solid Gold Petite',
      image:
          'https://rukminim2.flixcart.com/image/400/400/k7gikcw0/pocket-lighter/f/z/t/without-stand-small-cigarette-lighter-paavi-original-imafpzxqacguu53p.jpeg?q=70',
      price: 168.00,
      description: '',
      rating: '3.9',
    ),
    Product(
      name: 'White Gold plated',
      image:
          'https://rukminim1.flixcart.com/image/704/704/bangle-bracelet-armlet/f/h/k/brm132-free-size-silverwala-1-original-imadqsjtb7myj7pz.jpeg?q=70',
      price: 9.99,
      description: '',
      rating: '3',
    ),
    Product(
      name: 'Pierced Owl Rose',
      image:
          'https://th.bing.com/th/id/R.fae2b0db437e2dbcb98a3e1ff41e0d23?rik=XDJBcZHjQ%2fKkgA&riu=http%3a%2f%2fwww.fashionlady.in%2fwp-content%2fuploads%2f2017%2f03%2fShining-Diva-Crystal-Cubic-Zirconia-Platinum-Bracelet-Set.jpg&ehk=CFkuDltpoSMcbVYTTVRqdcSI2ukChvLbhLvdpmLN%2b30%3d&risl=&pid=ImgRaw&r=0',
      price: 10.99,
      description: '',
      rating: '1.9',
    ),
    Product(
      name: 'WD 2TB Elements',
      image:
          'https://th.bing.com/th/id/R.eaa6119d33d0f449fc4c5cb82931937b?rik=fGZd6%2fs6FU%2bZxQ&riu=http%3a%2f%2fimg6a.flixcart.com%2fimage%2fjewellery-set%2fh%2fs%2ft%2fcombo1031r12-vk-jewels-original-imadzjyfgth9uzrv.jpeg&ehk=A0PnhDcJHlD82rf3QAhxGGIKyaWRktsa0P6QSgwISkw%3d&risl=&pid=ImgRaw&r=0',
      price: 64.00,
      description: 'jkfhjkfhsksfsfsjfjsdjkfhskhsdkhsjknjfjkhiohwka,mc nalcjal',
      rating: '3.3',
    ),
    Product(
      name: 'SanDik SSD PLUS',
      image:
          'https://th.bing.com/th/id/OIP.llYpZoHHUmenLP12GixpDwHaE8?pid=ImgDet&rs=1',
      price: 109.00,
      description: '',
      rating: '2.9',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Product Kart',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.white10,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          mainAxisExtent: 280,
        ),
        itemCount: productList.length,
        itemBuilder: (
          context,
          index,
        ) {
          Product product = productList[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (
                context,
              ) {
                return ProductDetail(
                  product: product,
                );
              }));
            },
            child: Card(
              surfaceTintColor: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: Image.network(
                      product.image,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      product.name,
                    ),
                    subtitle: Text(
                      '${product.price}',
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
