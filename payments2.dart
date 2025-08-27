import 'package:flutter/material.dart';

class Payments2 extends StatefulWidget {
  const Payments2({super.key});

  @override
  State<Payments2> createState() => _Payments2State();
}

class _Payments2State extends State<Payments2> {
  final TextEditingController searchController = TextEditingController();
  final List<String> cardTitles = [
    'Total Orders',
    'Total Sales',
    'Revenue',
    'Total Visitor',
  ];

  List<String> filteredTitles = [];
  List<String> filteredPrices = [];

  @override
  void initState() {
    super.initState();
    filteredTitles = cardTitles;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD2B887),

      appBar: AppBar(
        title: Text('Payments', style: TextStyle(fontWeight: FontWeight.bold)),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: searchController,
                // onChanged: _filterSearchResults,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            ...List.generate(filteredTitles.length, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 60, 234, 188),
                          Color.fromARGB(255, 141, 60, 234),
                          Colors.white,
                        ],
                        stops: [0.0, 0.5, 1.0],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Container(
                      width: 200,
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            filteredTitles[index],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text('1925'),
                          const SizedBox(height: 10),
                          CustomPaint(
                            size: const Size(100, 100),
                            painter: getRingPainter(index),
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: Center(
                                child: Icon(
                                  Icons.arrow_outward_rounded,
                                  size: 40,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }
              ),
          ],
        ),
      ),
    );
  }
   CustomPainter getRingPainter(int index) {
    return RingPainter(index);
  }
}

class RingPainter extends CustomPainter {
  final int index;
  RingPainter(this.index);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =
        Paint()
          ..color = Colors.yellow
          ..style = PaintingStyle.stroke
          ..strokeWidth = 8
          ..strokeCap = StrokeCap.round;

    double progress = (index + 1) / 3;
    double sweepAngle = 2 * 3.14159265359 * progress;
    canvas.drawArc(
      Offset.zero & size,
      -3.14159265359 / 2,
      sweepAngle,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
