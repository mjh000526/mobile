import 'package:flutter/material.dart';

class LocationDropdown extends StatefulWidget {
  const LocationDropdown({super.key});

  @override
  State<LocationDropdown> createState() => _LocationDropdownState();
}

class _LocationDropdownState extends State<LocationDropdown> {

  final _cities = ['어방동','내외동','삼계동'];
  String? _selectedCity;

  @override
  void initState(){
    super.initState();
    setState(() {
      _selectedCity=_cities[0];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 250,
        child: DropdownButton(
          value: _selectedCity,
          padding: EdgeInsets.fromLTRB(18, 15, 0, 0),
          style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          underline: SizedBox.shrink(),
          items: _cities
            .map((e) => DropdownMenuItem(
              value: e, child: Text(e),
              ))
              .toList(),
              onChanged: (value){
                setState(() {
                  _selectedCity = value!;
                });
              },
        )
      )
    );
  }
}