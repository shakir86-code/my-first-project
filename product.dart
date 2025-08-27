import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  bool isFavorite = false;
  final List<Map<String, String>> cards = [
    {
      "image": "assets/images/image.png",
      "price": " 50,000 Q.T",
      "no plate": " Car Number Plate",
      "location": " BWP , Pakistan",
      "day": " 1 Day ago",
    },

    {
      "image": "assets/images/image.png",
      "price": " 50,000 Q.T",
      "no plate": " Car Number Plate",
      "location": " BWP , Pakistan",
      "day": " 1 Day ago",
    },

    {
      "image": "assets/images/image.png",
      "price": " 50,000 Q.T",
      "no plate": " Car Number Plate",
      "location": " BWP , Pakistan",
      "day": " 1 Day ago",
    },

    {
      "image": "assets/images/image.png",
      "price": " 50,000 Q.T",
      "no plate": " Car Number Plate",
      "location": " BWP , Pakistan",
      "day": " 1 Day ago",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD2B887),

        // backgroundColor: Colors.green,
        elevation: 0,
        leading: Container(
          width: 100,
          color: const Color(0xFFD2B887),
          child: Image.asset('assets/images/logo.jpg', fit: BoxFit.fill),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.transparent,

              backgroundImage: AssetImage("assets/images/icon-Photoroom.png"),
              // child: Image.asset("assets/images/logo.jpg".
            ),
          ),
          // IconButton(
          //   onPressed: () {},

          //   // icon: Image.asset(
          //   //   'assets/images/icon.png',
          //   //   // size: 35,
          //   // ),
          // ),
        ],
      ),
      backgroundColor: const Color(0xFFD2B887),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSearchField(),
                const SizedBox(height: 16),
                // Expanded(
                SizedBox(
                  width: 700,
                  height: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/car3.jpeg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                // ),
                const SizedBox(height: 20),
                const Text(
                  'Browse Category',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                _buildCategoryRow(),

                Row(
                  children: [
                    Text('VIP', style: TextStyle(fontWeight: FontWeight.bold)),
                    const Spacer(),

                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10),
                SizedBox(
                  height: 220,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: cards.length,
                    itemBuilder: (context, index) {
                      final card = cards[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          width: 200,
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            color: Color(0XFFFFD200),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(4, 8, 4, 0),

                                child: ClipRRect(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(12),
                                  ),
                                  child: Image.asset(
                                    card["image"]!,
                                    height: 100,
                                    width: double.infinity,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Row(
                                  children: [
                                    Text(
                                      card["price"]!,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.favorite_outline),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: Text(
                                  card["no plate"]!,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: Text(
                                  card["location"]!,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: Text(
                                  card["day"]!,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Golden',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),

                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 220,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: cards.length,
                    itemBuilder: (context, index) {
                      final card = cards[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          width: 200,
                          decoration: BoxDecoration(
                            // color: Colors.amber,
                            color: Color(0XFFFFD200),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(4, 8, 4, 0),

                                child: ClipRRect(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(12),
                                  ),
                                  child: Image.asset(
                                    card["image"]!,
                                    height: 100,
                                    width: double.infinity,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Row(
                                  children: [
                                    Text(
                                      card["price"]!,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Spacer(),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          isFavorite =
                                              !isFavorite; // Toggle favorite state
                                        });
                                      },
                                      icon: Icon(
                                        isFavorite
                                            ? Icons.favorite
                                            : Icons.favorite_outline,
                                        color: isFavorite ? Colors.red : null,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: Text(
                                  card["no plate"]!,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: Text(
                                  card["location"]!,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: Text(
                                  card["day"]!,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildSearchField() {
  return TextFormField(
    decoration: InputDecoration(
      filled: true,
      fillColor: Color(0xffECE6DA),
      hintText: 'Search',
      suffixIcon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 1,
            height: 32,
            color: Color(0XFF8E877D),
            margin: const EdgeInsets.symmetric(horizontal: 10),
          ),
          const Icon(Icons.search, color: Colors.black38, size: 40),
          // const SizedBox(width: 12),
        ],
      ),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.deepPurple),
      ),
    ),
  );
}

Widget _buildCategoryRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: const [
      Column(
        children: [
          // CircleAvatar(
          //   backgroundColor: Colors.white,
          //   radius: 28,
          //   child: Icon(Icons.car_repair, color: Colors.black),
          // ),
          SizedBox(height: 65),
          Text('Normal', style: TextStyle(fontWeight: FontWeight.w600)),
        ],
      ),
      Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 28,
            // child: Icon(Icons.workspace_premium, color: Colors.black),
            backgroundImage: AssetImage('assets/images/vipimage.png'),
          ),
          SizedBox(height: 8),
          Text('VIP', style: TextStyle(fontWeight: FontWeight.w600)),
        ],
      ),
      Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,

            radius: 28,
            // child: Icon(Icons.currency_exchange, color: Colors.black),
            backgroundImage: AssetImage('assets/images/silverimage.png'),
          ),
          SizedBox(height: 8),
          Text('Silver', style: TextStyle(fontWeight: FontWeight.w600)),
        ],
      ),
      Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,

            radius: 28,
            // child: Icon(Icons.auto_awesome, color: Colors.black),
            backgroundImage: AssetImage('assets/images/goldenimage.png'),
          ),
          SizedBox(height: 8),
          Text('Golden', style: TextStyle(fontWeight: FontWeight.w600)),
        ],
      ),
    ],
  );
}
















// see all ka sizebox ka nicha 

                // SizedBox(
                //   height: 150, // increased height to fit image + text
                //   child: ListView.builder(
                //     scrollDirection: Axis.horizontal,
                //     itemCount: cards.length,
                //     itemBuilder: (context, index) {
                //       final card = cards[index];
                //       return Padding(
                //         padding: const EdgeInsets.symmetric(horizontal: 2),
                //         child: Container(
                //           height: 150,
                //           width: 220,
                //           color: Colors.amber,
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.start,
                // //             crossAxisAlignment: CrossAxisAlignment.center,
                // //             children: [
                // //               // Padding(
                // //               //   padding: const EdgeInsets.all(3.0),
                // //               //   child: Expanded(
                // // //               //     child: Image.asset(
                // //               //       card["image"]!,
                // //               //       height: 100,
                // //               //       width: 220,
                // //               //       fit: BoxFit.cover,
                // //               //     ),
                // //               //   ),
                // //               // ),
                // //               Padding(
                // //   padding: const EdgeInsets.all(3.0),
                // //   child: Image.asset(
                // //     card["image"]!,
                // //     height: 100,
                // //     width: 220,
                // //     fit: BoxFit.cover,
                // //   ),
                // // ),

                //               const SizedBox(height: 4),
                //               Expanded(
                //                 child: Container(
                //                   margin: EdgeInsets.only(right: 120),
                //                   child: Text(
                //                     card["price"]!,
                //                     style: TextStyle(
                //                       fontWeight: FontWeight.bold,
                //                       fontSize: 18,
                //                     ),
                //                   ),
                //                 ),
                //               ),
                //               Container(
                //                 margin: EdgeInsets.only(right: 80),
                //                 child: Text(
                //                   card["no plate"]!,
                //                   style: TextStyle(
                //                     fontWeight: FontWeight.bold,
                //                     fontSize: 16,
                //                   ),
                //                 ),
                //               ),



    // SizedBox(
            //   height: 100,
            //   child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: cards.length,

            //     itemBuilder: (context, index) {
            //       final card = cards[index];
            //       return Padding(
            //         padding: const EdgeInsets.symmetric(horizontal: 2),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             Container(
            //               height: 100,
            //               width: 140,
            //               color: Colors.amber,
            //               child: Image.asset(card["image"]!,fit: BoxFit.cover, ),
                          
            //             ),
            //             Column(
            //               children: [
            //                 Text(
            //                   card["price"]!,
            //                   style: TextStyle(
            //                     fontWeight: FontWeight.bold,
            //                     fontSize: 20,
            //                   ),
            //                 ),
            //                 Text(
            //                   card["no plate"]!,
            //                   style: TextStyle(
            //                     fontWeight: FontWeight.bold,
            //                     fontSize: 20,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ],
            //         ),
            //       );

            //     },
            //   ),
            // ),







// SizedBox(
//   height: 150, // increased height to fit image + text
//   child: ListView.builder(
//     scrollDirection: Axis.horizontal,
//     itemCount: cards.length,
//     itemBuilder: (context, index) {
//       final card = cards[index];
//       return Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 2),
//         child: Container(
//           height: 150,
//           width: 140,
//           color: Colors.amber,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Image.asset(
//                 card["image"]!,
//                 height: 100,
//                 width: 140,
//                 fit: BoxFit.cover,
//               ),
//               const SizedBox(height: 4),
//               Text(
//                 card["price"]!,
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 16,
//                 ),
//               ),
//               Text(
//                 card["no plate"]!,
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 16,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
//     },
//   ),
// ),
