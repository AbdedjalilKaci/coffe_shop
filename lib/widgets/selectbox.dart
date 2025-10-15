import 'package:flutter/material.dart';

class LocationSelector extends StatefulWidget {
  final List<String> locations;
  final ValueChanged<String> onSelected;

  const LocationSelector({
    super.key,
    required this.locations,
    required this.onSelected,
  });

  @override
  State<LocationSelector> createState() => _LocationSelectorState();
}

class _LocationSelectorState extends State<LocationSelector> {
  String? selectedLocation;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedLocation,
          hint: const Text("Select a location",style: TextStyle(color: Colors.white),),
          isExpanded: true,
          items: widget.locations.map((location) {
            return DropdownMenuItem(
              value: location,
              child: Text(location,style: TextStyle(color: Colors.black),),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              selectedLocation = value;
            });
            if (value != null) {
              widget.onSelected(value);
            }
          },
        ),
      ),
    );
  }
}
