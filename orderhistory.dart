import 'package:flutter/material.dart';

class Orderhistory extends StatefulWidget {
  const Orderhistory({super.key});

  @override
  State<Orderhistory> createState() => _OrderhistoryState();
}

class _OrderhistoryState extends State<Orderhistory> {
  final List<Map<String, dynamic>> orders = [
    {
      'image': 'assets/images/image.png',
      'plate': '197500',
      'id': 'ID 11150',
      'date': 'Monday, 11 November ',
      'year': '2024 (GMT+5)',
      'seller': 'Malik',
      'buyer': 'Haroon',
      'price': '50,000 Q.T',
      'status': 'Delivered',
    },
    {
      'image': 'assets/images/image.png',
      'plate': '197500',
      'id': 'ID 11150',
      'date': 'Monday, 11 November ',
      'year': '2024 (GMT+5)',
      'seller': 'Malik',
      'buyer': 'Haroon',
      'price': '50,000 Q.T',
      'status': 'In Progress',
    },
    {
      'image': 'assets/images/image.png',
      'plate': '197500',
      'id': 'ID 11150',
      'date': 'Monday, 11 November ',
      'year': '2024 (GMT+5)',
      'seller': 'Malik',
      'buyer': 'Haroon',
      'price': '50,000 Q.T',
      'status': 'In Progress',
    },
    {
      'image': 'assets/images/image.png',
      'plate': '197500',
      'id': 'ID 11150',
      'date': 'Monday, 11 November ',
      'year': '2024 (GMT+5)',
      'seller': 'Malik',
      'buyer': 'Haroon',
      'price': '50,000 Q.T',
      'status': 'Delivered',
    },
    {
      'image': 'assets/images/image.png',
      'plate': '197500',
      'id': 'ID 11150',
      'date': 'Monday, 11 November ',
      'year': '2024 (GMT+5)',
      'seller': 'Malik',
      'buyer': 'Haroon',
      'price': '50,000 Q.T',
      'status': 'In Progress',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD2B887),
      appBar: AppBar(
        title: const Text("Orders History"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: 
      ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return Padding(
            padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 100,
                width: 590,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: const Color(0xffD2B887),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.asset(
                          order["image"]!,
                           height: 300,
                           width: 100,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Private Plate ${order['plate']}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          order['id']!,
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(order['date']!, style: TextStyle(fontSize: 12)),
                        Text(order['year']!, style: TextStyle(fontSize: 12)),
                        const SizedBox(height: 4),
                      ],
                    ),
                    SizedBox(width: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Seller Name',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              order['seller']!,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(width: 25),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Buyer Name',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              order['buyer']!,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 45),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Sold',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: PopupMenuButton<String>(
                                      onSelected: (value) {},
                                      itemBuilder:
                                          (context) => [
                                            const PopupMenuItem(
                                              value: "View",
                                              child: Text("View"),
                                            ),
                                            const PopupMenuItem(
                                              value: "Edit",
                                              child: Text("Edit"),
                                            ),
                                          ],
                                    ),
                                  ),
                                ],
                              ),

                              Column(
                                children: [
                                  Text(
                                    order['price'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Status',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      SizedBox(width: 5,),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          // backgroundColor:
                                          //     order['status'] == 'Delivered'
                                          //         ? Colors.green
                                          //         : order['status'] ==
                                          //             'In Progress'
                                          //         ? Colors.red
                                          //         : null,
                                          backgroundColor:
                                              order['status'] == 'Delivered'
                                                  ? Colors.green
                                                  : Colors.red,
                                          foregroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            vertical: 0,
                                            horizontal: 4,
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Text(order['status']!,style: TextStyle(fontSize: 10),),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
















// import 'package:flutter/material.dart';

// class Orderhistory extends StatefulWidget {
//   const Orderhistory({super.key});

//   @override
//   State<Orderhistory> createState() => _OrderhistoryState();
// }

// class _OrderhistoryState extends State<Orderhistory> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        backgroundColor: const Color(0xFFD2B887), 
//       appBar: AppBar(
//         title: const Text("Orders History"),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         foregroundColor: Colors.black,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back_ios),
//           onPressed: () {},
//         ),
//       ),
//       body: 
//       Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Container(
//           height: 120,
//           width: 650,
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             // color: Colors.white,
//             color: const Color(0xFFD2B887),
//             borderRadius: BorderRadius.circular(16),
//             border: Border.all(color: Colors.black),
//           ),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // 1. Image Column
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(8),
//                 child: Image.asset(
//                   "assets/images/qatar.jpeg",
//                   width: 80,
//                   height: 85,
//                   fit: BoxFit.cover,
//                 ),
//               ),

//               const SizedBox(width: 12),

//               // 2. Private Plate Column
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: const [
//                   Text(
//                     "Private Plate 197500",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text("ID 11150"),
//                   Text("Monday, 11 November"),
//                   Text("2024 (GMT+5)"),
//                 ],
//               ),

//               const SizedBox(width: 12),

//               // 3. Seller Name
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("Seller Name", style: TextStyle(fontSize: 12)),
//                   Text("Malik", style: TextStyle(fontWeight: FontWeight.bold)),
//                 ],
//               ),
//               SizedBox(width: 10),

//               // 4. Buyer Name
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("Buyer Name", style: TextStyle(fontSize: 12)),
//                   Text("Haroon", style: TextStyle(fontWeight: FontWeight.bold)),
//                 ],
//               ),

//               // 5. Price + Icon + Status
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Row(
//                     children: [
//                       const Text(
//                         "Sold",
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(width: 10),
                      // PopupMenuButton<String>(
                      //   onSelected: (value) {},
                      //   itemBuilder:
                      //       (context) => [
                      //         const PopupMenuItem(
                      //           value: "View",
                      //           child: Text("View"),
                      //         ),
                      //         const PopupMenuItem(
                      //           value: "Edit",
                      //           child: Text("Edit"),
                      //         ),
                      //       ],
                      // ),
//                     ],
//                   ),
//                   const Text("50,000 Q.T"),
//                   const SizedBox(height: 8),
//                   Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       const Text(
//                         "Status",
//                         style: TextStyle(
//                           fontSize: 12,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(width: 6),
//                       ElevatedButton(
//                         onPressed: () {},
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.amber[800],
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 10,
//                             vertical: 1,
//                           ),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(18),
//                           ),
//                         ),
//                         child: const Text(
//                           "Delivered",
//                           style: TextStyle(fontSize: 12, color: Colors.white),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }