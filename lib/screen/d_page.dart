import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Dpage extends StatefulWidget {
  final String dpageName;

  Dpage({this.dpageName});

  @override
  State<StatefulWidget> createState() => _DpageState();
}

class _DpageState extends State<Dpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        //alignment: Alignment.center,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 300.0,
                ),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(color: Colors.amber),
                        child: Text(
                          'text $i',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
