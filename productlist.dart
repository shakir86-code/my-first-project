import 'package:flutter/material.dart';

class Productlist extends StatefulWidget {
  const Productlist({super.key});

  @override
  State<Productlist> createState() => _ProductlistState();
}

class _ProductlistState extends State<Productlist> {
  final TextEditingController searchcontroller = TextEditingController();
  final List<Map<String, String>> orders = [
    {
      "id": "0115",
      "image": "assets/images/image.png",
      "name": "Malik",
      "plateno.": "197500",
      "price": "50,000",
    },
    {
      "id": "0115",
      "image": "assets/images/image.png",
      "name": "Malik",
      "plateno.": "197500",
      "price": "50,000",
    },
    {
      "id": "0115",
      "image": "assets/images/image.png",
      "name": "Malik",
      "plateno.": "197500",
      "price": "50,000",
    },
    {
      "id": "0115",
      "image": "assets/images/image.png",
      "name": "Malik",
      "plateno.": "197500",
      "price": "50,000",
    },
    {
      "id": "0115",
      "image": "assets/images/image.png",
      "name": "Malik",
      "plateno.": "197500",
      "price": "50,000",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFFD2B887),

        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_active_outlined, size: 35),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/car.jpeg'),
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xFFD2B887),

      body: Column(
        children: [
          // SizedBox(height: 20,),
          Container(
            height: 50,
            width: 300,
            child: TextFormField(
              controller: searchcontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                filled: true,
                fillColor: Colors.white,
                label: Text(
                  "Search",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                suffixIcon: Icon(Icons.search, size: 35, color: Colors.grey),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 330,
              width: 480,
              decoration: BoxDecoration(
                color: Color(0XFFF2EEE7),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Expanded(
                child: ListView.separated(
                  itemCount: orders.length,
                  separatorBuilder:
                      (context, index) =>
                          Divider(color: Colors.black, thickness: 2),
                  itemBuilder: (context, index) {
                    final order = orders[index];
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        spacing: 37,
                        children: [
                          Text(order["id"]!),
                          // ClipRRect(),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(13),
                            child: Image.asset(
                              order["image"]!,
                              width: 50,
                              height: 50,
                              fit: BoxFit.fill,
                            ),
                          ),
                          // CircleAvatar(
                          //   backgroundImage: AssetImage(order["image"]!),
                          // ),
                          Text(order["name"]!),
                          Text(order["plateno."]!),
                          Text(order["price"]!),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.delete),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.black, width: 2),
              ),
            ),
            onPressed: () {},
            child: Text("Load More"),
          ),
        ],
      ),
    );
  }
}
