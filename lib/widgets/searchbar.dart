// ignore_for_file: unused_import, prefer_const_constructors

import 'package:firbase_signup_signin/Constant.dart/colors.dart';
import 'package:flutter/material.dart';
import 'package:switcher_button/switcher_button.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      height: 50,
      // color: Colors.black,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.black45),
      child: TextField(
        cursorColor: cyellow,
        style: TextStyle(
          color: Colors.white,
        ),
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: "Search",
            hintStyle: TextStyle(
              color: Colors.white38,
            ),
            prefixIcon: Icon(
              Icons.search_rounded,
              color: Colors.amber[300],
            ),
            border: InputBorder.none),
      ),
    );
  }
}
