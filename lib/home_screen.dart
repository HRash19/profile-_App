import 'package:flutter/material.dart';


const Color customCircleColor = Colors.purpleAccent;
const Color customIconColor = Colors.purple;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Profile",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        backgroundColor: Colors.yellow,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_circle_outline), // ব্র্যাকেট ঠিক করা হয়েছে
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call_outlined),
            color: Colors.black,
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // 1. Ice cream section
                Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: customCircleColor,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/ice_cream.jpg',
                      width: 80,
                      height: 80,
                      color: customIconColor,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Ice cream is very delicious right?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: customIconColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 60),

                Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: customCircleColor,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/code.jpg',
                      width: 80,
                      height: 80,
                      color: customIconColor,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Programming is not boring if you love it',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: customIconColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
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