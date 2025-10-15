import 'package:coffe_shop/widgets/searchbox.dart';
import 'package:coffe_shop/widgets/selectbox.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final TextEditingController searchController = TextEditingController();
  String searchText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(  
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                padding: const EdgeInsets.all(30),  
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 31, 31, 31),
                      Color.fromARGB(255, 58, 58, 58),
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Location",
                      style: TextStyle(color: Color(0xFFA2A2A2)),
                    ),
                    const SizedBox(height: 8),
                    LocationSelector(
                      locations: ['Algiers', 'Oran', 'Constantine', 'Annaba'],
                      onSelected: (location) {},
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: SearchBox(
                            controller: searchController,
                            onChanged: (value) {
                              setState(() {
                                searchText = value;
                              });
                              print("Searching for: $value");
                            },
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFFC67C4E),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Add more content below if needed
            ],
          ),
        ),
    );
  }
}
