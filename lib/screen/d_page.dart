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
      body: ListView(
        children: [
          CarouselSlider(
              items: [
                  
                //1st Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage('https://i.insider.com/5b75d39304f1622b008b5281?width=700'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  
                //2nd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage('https://ichef.bbci.co.uk/news/976/cpsprodpb/17AB3/production/_117674969_godzilla.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  
                //3rd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage('https://s.isanook.com/mv/0/rp/rc/w850h510/yacxacm1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL212LzAvdWQvMjIvMTExODIxL2NvbGxhZ2UuanBn.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  
                //4th Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage('https://akm-img-a-in.tosshub.com/indiatoday/images/story/201910/warr-770x433.jpeg?54Ca7.SmVmwNrlVarS3qz4.4AmY_AbOj'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  
                //5th Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage('https://specials-images.forbesimg.com/imageserve/60834c1a3d1f65d835c44223/960x0.jpg?fit=scale'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
  
          ],
              
            //Slider Container properties
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
          ),
        ],
      ),
  
    );
  }
}
