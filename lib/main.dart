import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/screen/main_page.dart';
import 'package:flutter_application/screen/w_page.dart' as w_page;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.cyan,
      ),
      home: MainPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();


}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Hello Cenk',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            Text('Let explore your favorite movies')
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => w_page.Wpage()),
                          );
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          //margin: const EdgeInsets.all(1.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              
                                image: AssetImage('images/tae1.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('Popular Movie',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://i1.wp.com/mereview.in.th/wp-content/uploads/2017/12/88-Jumanji.jpg?fit=800%2C600&ssl=1'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  height: 150,
                  width: 350,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Jumanji : The Next Level',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text('Action,Adventure,comedy',
                            style: TextStyle(fontSize: 16, color: Colors.white))
                      ],
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Trending Category',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Text('View all',
                          style: TextStyle(
                            fontSize: 16,
                          )),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              border: new Border.all(
                                  color: Color(0xFFFFC000),
                                  width: 5.0,
                                  style: BorderStyle.solid),
                              borderRadius:
                                  new BorderRadius.all(Radius.circular(10)),
                              color: Color(0xFFFFC000),
                              boxShadow: [
                                new BoxShadow(
                                    color: Color(0xFFFFC000).withAlpha(200),
                                    offset: new Offset(0.0, 3.0),
                                    blurRadius: 5.0,
                                    spreadRadius: 3.0)
                                //BoxShadow
                                //BoxShadow
                              ],
                            ),
                            child: TextButton(
                                child: Text(
                                  'Fatasy',
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {}),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              border: new Border.all(
                                  color: Colors.greenAccent,
                                  width: 5.0,
                                  style: BorderStyle.solid),
                              borderRadius:
                                  new BorderRadius.all(Radius.circular(10)),
                              color: Colors.greenAccent,
                              boxShadow: [
                                new BoxShadow(
                                    color: Colors.green[300],
                                    offset: new Offset(0.0, 3.0),
                                    blurRadius: 5.0,
                                    spreadRadius: 3.0)
                                //BoxShadow
                                //BoxShadow
                              ],
                            ),
                            child: TextButton(
                              child: Text(
                                'Action',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              border: new Border.all(
                                  color: Colors.orange,
                                  width: 5.0,
                                  style: BorderStyle.solid),
                              borderRadius:
                                  new BorderRadius.all(Radius.circular(10)),
                              color: Colors.orange,
                              boxShadow: [
                                new BoxShadow(
                                    color: Colors.orange[300],
                                    offset: new Offset(0.0, 3.0),
                                    blurRadius: 5.0,
                                    spreadRadius: 3.0)
                                //BoxShadow
                                //BoxShadow
                              ],
                            ),
                            child: TextButton(
                              child: Text(
                                'Adventure',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              border: new Border.all(
                                  color: Colors.red,
                                  width: 5.0,
                                  style: BorderStyle.solid),
                              borderRadius:
                                  new BorderRadius.all(Radius.circular(10)),
                              color: Colors.red,
                              boxShadow: [
                                new BoxShadow(
                                    color: Colors.red[300],
                                    offset: new Offset(0.0, 3.0),
                                    blurRadius: 5.0,
                                    spreadRadius: 3.0)
                                //BoxShadow
                                //BoxShadow
                              ],
                            ),
                            child: TextButton(
                              child: Text(
                                'Sci-Fi',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('New Release',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Text('View all',
                          style: TextStyle(
                            fontSize: 16,
                          )),
                    ],
                  ),
                ),
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                delegate: SliverChildListDelegate(List.generate(
                    10,
                    (index) => Card(
                          child: Image.network(
                            'https://i1.wp.com/mereview.in.th/wp-content/uploads/2017/12/88-Jumanji.jpg?fit=800%2C600&ssl=1',
                            fit: BoxFit.cover,
                          ),
                        ))),
              )
            ],
          ),
        ),
      ),
      /*bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(icon: Icon(Icons.home), onPressed: () {}),
              IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
              IconButton(icon: Icon(Icons.book), onPressed: () {}),
              IconButton(icon: Icon(Icons.person), onPressed: () {}),
            ],
          ),
        ),
      ),*/
      /*floatingActionButton: FloatingActionButton(
          child: CircleAvatar(
              backgroundColor: Colors.greenAccent, child: Icon(Icons.add)),
          onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,*/
    );
  }
}
