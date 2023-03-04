import 'package:flutter/material.dart';

class Pagination extends StatefulWidget {
  const Pagination({super.key});

  @override
  State<Pagination> createState() => _PaginationState();
}

class _PaginationState extends State<Pagination> {
  @override
  void initState() {
    super.initState();
    fetchposts();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Future<void> fetchposts() async {}
}
