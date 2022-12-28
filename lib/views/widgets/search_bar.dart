import 'package:flutter/material.dart';


class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   TextField(
      decoration: InputDecoration(
        hintText: "Find your pizza",

        prefixIcon: Icon(Icons.search),
        suffixIcon: Icon(Icons.filter_alt_sharp),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );

  }
}
