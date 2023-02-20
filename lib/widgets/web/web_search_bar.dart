import 'package:flutter/material.dart';
import 'package:responsive_layout/colors/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      height: MediaQuery.of(context).size.height * 0.06,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: dividerColor))),
      child: const TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: searchBarColor,
            hintStyle: TextStyle(fontSize: 14),
            hintText: "Search or start new chat",
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Icon(Icons.search),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            contentPadding: EdgeInsets.all(10)),
      ),
    );
  }
}
