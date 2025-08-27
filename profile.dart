import 'package:flutter/material.dart';
import 'package:my_application10100/basicinfo.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        // centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.share))],
        backgroundColor: const Color(0xFFD2B887),
      ),
      backgroundColor: const Color(0xFFD2B887),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 10,
            children: [
              Image.asset(
                'assets/images/image.png',
                height: 220,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '50,000 Q.T',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Sports car | Number plate',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  Text('Bhawalpur, Punjab, Pakistan'),
                  const Spacer(),
                  Text('13/11/2024'),
                ],
              ),
              const Divider(),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Details',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Container(
                height: 30,
                width: 490,
                decoration: BoxDecoration(color: Color(0XFFE6F423), borderRadius: BorderRadius.circular(4)),
                child: Row(
                  children: [
                    Text('Phone Number'),
                    SizedBox(width: 90),
                    Text('55723', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
        
              Container(
                height: 30,
                width: 490,
                decoration: BoxDecoration(
                ),
                child: Row(
                  children: [
                    Text('Owner Name'),
                    SizedBox(width: 90),
                    Text(
                      'Haroon Rasheed',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
        
              Container(
                height: 30,
                width: 490,
                decoration: BoxDecoration(color: Color(0XFFE6F423), borderRadius: BorderRadius.circular(4)),
        
                child: Row(
                  children: [
                    Text('Price'),
                    SizedBox(width: 150),
                    Text(
                      '50,000 Q.T',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Description',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Text(
                "I am selling my this Qatar numbetr plate because i don't need it any more please help me and buy this number plate other wise these i am going to kill myself.",
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Listed by private user',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage('assets/images/personimage.jpg'),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Haroon Rasheed',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Member since June 2024'),
                      SizedBox(height: 6),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Basicinfo()));
                            },
                            child: Text(
                              'See Profile',
                              style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Basicinfo()));
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
