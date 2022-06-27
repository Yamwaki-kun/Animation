import 'package:flutter/material.dart';

import '../Model/Post.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Post post = Post(0, "", "", "");

  Future<List<Post>> _recImagens() async {
    http.Response response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
    var dadosJson = json.decode(response.body);
    final List<Post> postagens = List.generate(0, (index) => post);
    for (var post in dadosJson) {
      Post p =
          Post(post["id"], post["title"], post["url"], post["thumbnailUrl"]);
      postagens.add(p);
      print(p.thumb);
    }

    return postagens;
  }

  Widget build(BuildContext context) {
    return FutureBuilder<List<Post>>(
      future: _recImagens(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return Center(
              child: CircularProgressIndicator(),
            );
          case ConnectionState.active:
          case ConnectionState.done:
            if (snapshot.hasError) {
              return Center(
                child: Text(
                  "Erro ao carregar os dados",
                  style: TextStyle(color: Colors.white),
                ),
              );
            } else {
              return GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 40),
                  itemCount: snapshot.data?.length,
                  itemBuilder: (BuildContext context, index) {
                    List<Post>? lista = snapshot.data;
                    Post post = (lista as dynamic)[index];
                    return Column(
                      children: [
                        Container(
                          height: 110,
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(post.thumb)),
                          ),

                        ),
                      ],
                    );
                  });
            }
        }
      },
    );
  }
}
