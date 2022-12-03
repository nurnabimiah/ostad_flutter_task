
import 'package:flutter/material.dart';

import 'movie_db.dart';
import 'movie_item2.dart';

class MovieList extends StatefulWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  State<MovieList> createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Movie List(task-3)'),
      ),
      body: ListView.builder(
          itemCount: movies.length,
          itemBuilder:(context,index)
          {
            final movie = movies[index];
            return MovieItem2(movie: movie);

          }

      ),
    );
  }
}
