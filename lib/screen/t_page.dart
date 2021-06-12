import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Tpage extends StatefulWidget {
  final String pageName;

  Tpage({this.pageName});

  @override
  State<StatefulWidget> createState() => _TpageState();
}

class _TpageState extends State<Tpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            //alignment: Alignment.center,
            child: CustomScrollView(slivers: <Widget>[
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://m.media-amazon.com/images/M/MV5BMTc2MTQ3MDA1Nl5BMl5BanBnXkFtZTgwODA3OTI4NjE@._V1_.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 350,
                      width: 250,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('The Martian',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('8.0',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RatingBar.builder(
                      initialRating: 4.5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Length', style: TextStyle(fontSize: 16)),
                            Text('02:24:46',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Lenguage', style: TextStyle(fontSize: 16)),
                            Text('English',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Year', style: TextStyle(fontSize: 16)),
                            Text('2015',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Rating', style: TextStyle(fontSize: 16)),
                            Text('+28',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Storyline',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          'An astronaut becomes stranded on Mars afther his team assume him dead, and must rely on his ingenuity')
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Cast',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5),
                delegate: SliverChildListDelegate(List.generate(
                    10,
                    (index) => Card(
                          child: Image.network(
                            'https://hips.hearstapps.com/pop.h-cdn.co/assets/17/03/640x959/gallery-1484754547-gettyimages-488198406.jpg?resize=480:*',
                            fit: BoxFit.cover,
                            
                          ),
                        ))),
              )
            ])));
  }
}
