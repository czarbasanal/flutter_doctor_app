import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBarWidget extends StatelessWidget {
  final ValueChanged<String> onTextChanged;

  const SearchBarWidget({Key? key, required this.onTextChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 56,
      decoration: BoxDecoration(
        color: const Color(0xffF6F6F6),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                onChanged: onTextChanged,
                decoration: InputDecoration(
                  hintText: "Search doctor, medicines, etc.",
                  hintStyle: GoogleFonts.lato(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                      color: const Color(0xffcacdce)),
                  border: InputBorder.none,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                onTextChanged('');
              },
              child: const Icon(Icons.search_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
