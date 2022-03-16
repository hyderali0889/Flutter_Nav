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
                color: Colors.red,
                boxShadow: const [BoxShadow(color: Colors.black87)],
              ),
              child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          "Movie Name",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.cyanAccent,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            movie.title,
                            style: const TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold),
                          )),
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          "IMBD Ratings",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.cyanAccent,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          "${movie.imdbRating} Rating on IMBD",
                          style: const TextStyle(
                              fontSize: 18, color: Colors.white),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              "Metascore ",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.cyanAccent,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              " Release Data ",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.cyanAccent,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "${movie.metascore} metascore ",
                              style: const TextStyle(
                                  fontSize: 18, color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "${movie.released} ",
                              style: const TextStyle(
                                  fontSize: 18, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          "Awards Won",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.cyanAccent,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          "${movie.awards}",
                          style: const TextStyle(
                              fontSize: 18, color: Colors.white),
                        ),
                      )
                    ],
                  ))),
        ));
  }

// ---------------------- Widget 2 -----------------------

// ------------------------------------- End of Main Class -------------------------------------------
}
