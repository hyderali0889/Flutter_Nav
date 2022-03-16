import 'package:flutter/material.dart';
import 'contact.dart';
import '../utils/data.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final List movieList = Movie.getMovies();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (BuildContext context, int index) {
          return mainCard(context, movieList[index]);
        },
      ),
    );
  }

  Widget mainCard(BuildContext context, var movie) {
    return InkWell(
      onTap: () => {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Contact(movie: movie)))
      },
      child: Card(
        color: Colors.blueAccent,
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Text(
            movie.title,
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
