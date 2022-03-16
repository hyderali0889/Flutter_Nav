import 'dart:ui';

import 'package:flutter/material.dart';
import 'contact.dart';
import '../utils/data.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final List movieList = Movie.getMovies();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff131313),
      body: ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.all(50.0),
            child: mainCard(context, movieList[index]),
          );
        },
      ),
    );
  }

// ---------------------------------------- Widget Section ------------------------------------------

// ---------------------- Widget 1 -----------------------

  Widget mainCard(BuildContext context, var movie) {
    return InkWell(
        onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Contact(movie: movie)))
            },
        child: Card(
          color: Colors.transparent,
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                    end: Alignment.bottomRight,
                    begin: Alignment.topLeft,
                    colors: [
                      Colors.grey.withOpacity(0.3),
                      Colors.grey.withOpacity(0.5),
                      Colors.grey.withOpacity(0.7)
                    ]),
                boxShadow: const [BoxShadow(color: Colors.black87)],
              ),
              child: Column(
                children: [
                  img(context, movie.images[0]),
                  Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          headingdata(context, "Movie Name"),
                          movieName(context, movie.title),
                          headingdata(context, "IMBD Ratings"),
                          textdata(context, movie.imdbRating),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              headingdata(context, "Metascore "),
                              headingdata(context, "Release Data "),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              textdata(context, movie.metascore),
                              textdata(context, movie.released),
                            ],
                          )
                        ],
                      )),
                ],
              )),
        ));
  }

// ---------------------- Widget 2 -----------------------

  Widget textdata(BuildContext context, var text) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text(
        "$text",
        style: const TextStyle(fontSize: 18, color: Colors.white),
      ),
    ));
  }

// ------------------------- Widget 3 -------------------------

  Widget headingdata(BuildContext context, var heading) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text(
        "$heading",
        style: const TextStyle(
            fontSize: 25,
            color: Colors.cyanAccent,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
      ),
    );
  }

// -------------------- Widget 4 ---------------------

  Widget movieName(BuildContext context, var movieName) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text(
        "$movieName",
        style: const TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
      ),
    );
  }

// -------------------------- Widget 5 -------------------------

  Widget img(BuildContext context, var img) {
    return SizedBox(
      width: double.infinity,
      height: 244,
      child: Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(color: Colors.black54, spreadRadius: 4.2, blurRadius: 4.9)
          ]),
          child: Image.network(
            img,
            fit: BoxFit.cover,
          )),
    );
  }

// ------------------------------------- End of Main Class -------------------------------------------
}
