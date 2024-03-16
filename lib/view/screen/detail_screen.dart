// import 'package:flutter/material.dart';
// import 'package:inno_tech/helper/api_helper.dart';
// import 'package:inno_tech/model/api_model.dart';
//
// class DetailPage extends StatelessWidget {
//   const DetailPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final int proID = ModalRoute.of(context)!.settings.arguments as int;
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Products Detail"),
//         backgroundColor: Colors.red,
//       ),
//       body: FutureBuilder<Product>(
//         future: ApiProvider().fetchProductDetails(proID),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           } else if (snapshot.hasError) {
//             return Center(
//               child: Text("Error ${snapshot.error}"),
//             );
//           } else {
//             Product product = snapshot.data!;
//
//             return Padding(
//               padding: const EdgeInsets.all(16),
//               child: SingleChildScrollView(
//                 physics: const BouncingScrollPhysics(),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Image.network(product.image),
//                     const SizedBox(height: 10),
//                     Text(
//                       product.title,
//                       style: const TextStyle(fontSize: 20),
//                     ),
//                     const SizedBox(height: 10),
//                     Text(product.description),
//                     const SizedBox(height: 10),
//                     Text('Price: \$${product.price.toStringAsFixed(2)}'),
//                     const SizedBox(height: 8),
//                     Text(
//                       "Rating: ${product.rating.rate} (${product.rating.count} Review)",
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           }
//         },
//       ),
//     );
//   }
// }
