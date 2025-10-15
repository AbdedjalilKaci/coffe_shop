import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final String hintText;

  const SearchBox({
    super.key,
    required this.controller,
    required this.onChanged,
    this.hintText = "Search...",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 31, 31, 31),
            Color.fromARGB(255, 58, 58, 58),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            color: Colors.white, // your custom color
            fontSize: 16,
          ),
          hintText: hintText,
          border: InputBorder.none,
          prefixIcon: const Icon(Icons.search,color: Colors.white,),
        ),
      ),
    );
  }
}
