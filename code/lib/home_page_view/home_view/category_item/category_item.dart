// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CategoryItem extends StatefulWidget {
  final String category;
  final String categoryClicked;
  final String priceFrom;
  final IconData iconData;

  const CategoryItem({
    Key? key,
    required this.category,
    required this.categoryClicked,
    required this.priceFrom,
    required this.iconData,
  }) : super(key: key);

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 100,
      margin: const EdgeInsets.only(
        right: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: widget.category == widget.categoryClicked
              ? const Color(0xff00b4d8)
              : const Color(0xffced4da),
          width: 3,
        ),
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.iconData,
            size: 30,
          ),
          Text(
            widget.category,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            widget.priceFrom,
            style: const TextStyle(
              color: Color(0xff495057),
            ),
          ),
        ],
      ),
    );
  }
}
