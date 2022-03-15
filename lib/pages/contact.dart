import 'package:flutter/material.dart';
import '../utils/data.dart';

class Contact extends StatelessWidget {
  final Movie movie;
  const Contact({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Center(child: Text(movie.title)),
      ),
    );
  }
}
