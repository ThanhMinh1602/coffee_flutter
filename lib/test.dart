// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   runApp(MyApp());
// }

// class CartItem {
//   final String name;
//   final double price;

//   CartItem(this.name, this.price);
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: CartScreen(),
//     );
//   }
// }

// class CartScreen extends StatefulWidget {
//   @override
//   _CartScreenState createState() => _CartScreenState();
// }

// class _CartScreenState extends State<CartScreen> {
//   List<CartItem> cartItems = [];
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final TextEditingController _itemNameController = TextEditingController();
//   final TextEditingController _itemPriceController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     loadCart();
//   }

//   Future<void> loadCart() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     final cartData = prefs.getStringList('cart');
//     if (cartData != null) {
//       setState(() {
//         cartItems = cartData
//             .map((item) => item.split('|'))
//             .map((data) => CartItem(data[0], double.parse(data[1])))
//             .toList();
//       });
//     }
//   }

//   Future<void> saveCart() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     final cartData =
//         cartItems.map((item) => "${item.name}|${item.price}").toList();
//     await prefs.setStringList('cart', cartData);
//   }

//   void addToCart() {
//     final itemName = _itemNameController.text;
//     final itemPrice = double.parse(_itemPriceController.text);

//     setState(() {
//       cartItems.add(CartItem(itemName, itemPrice));
//     });

//     saveCart(); // Lưu giỏ hàng sau khi thêm sản phẩm
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping Cart'),
//       ),
//       body: Column(
//         children: <Widget>[
//           Form(
//             key: _formKey,
//             child: Column(
//               children: <Widget>[
//                 TextFormField(
//                   controller: _itemNameController,
//                   decoration: InputDecoration(labelText: 'Tên sản phẩm'),
//                 ),
//                 TextFormField(
//                   controller: _itemPriceController,
//                   keyboardType: TextInputType.number,
//                   decoration: InputDecoration(labelText: 'Giá'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     if (_formKey.currentState!.validate()) {
//                       addToCart();
//                     }
//                   },
//                   child: Text('Thêm vào giỏ hàng'),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: cartItems.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(cartItems[index].name),
//                   subtitle:
//                       Text('\$${cartItems[index].price.toStringAsFixed(2)}'),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
