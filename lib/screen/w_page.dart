import 'package:flutter/material.dart';


class Wpage extends StatefulWidget {
  final String wpageName;

  Wpage({this.wpageName});

  @override
  State<StatefulWidget> createState() => _WpageState();
}

class _WpageState extends State<Wpage> {
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
                child: Container(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(child: Icon(Icons.person)),
                      TextButton(
                        onPressed: () {
                          
                        },
                      child: Container(
                        width: 100,
                        height: 100,
                        //margin: const EdgeInsets.all(1.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('images/tae1.jpg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      ),
                      CircleAvatar(child: Icon(Icons.favorite)),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Cenk Yilmaz',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Sr.Art Director')
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Badegs', style: TextStyle(fontSize: 16)),
                            Text('462',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Followers', style: TextStyle(fontSize: 16)),
                            Text('235k',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Following', style: TextStyle(fontSize: 16)),
                            Text('167k',
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
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Top Categories',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(6.0),
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        border: new Border.all(
                            color: Colors.green[50],
                            width: 5.0,
                            style: BorderStyle.solid),
                        borderRadius: new BorderRadius.all(Radius.circular(10)),
                        color: Colors.green[50],
                        boxShadow: [
                          new BoxShadow(
                              color: Colors.green[50],
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
                          style: TextStyle(color: Colors.yellow[900]),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(6.0),
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        border: new Border.all(
                            color: Colors.green[50],
                            width: 5.0,
                            style: BorderStyle.solid),
                        borderRadius: new BorderRadius.all(Radius.circular(10)),
                        color: Colors.green[50],
                        boxShadow: [
                          new BoxShadow(
                              color: Colors.green[50],
                              offset: new Offset(0.0, 3.0),
                              blurRadius: 5.0,
                              spreadRadius: 3.0)
                          //BoxShadow
                          //BoxShadow
                        ],
                      ),
                      child: TextButton(
                        child: Text(
                          'Comedy',
                          style: TextStyle(color: Colors.yellow[700]),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(6.0),
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        border: new Border.all(
                            color: Colors.green[50],
                            width: 5.0,
                            style: BorderStyle.solid),
                        borderRadius: new BorderRadius.all(Radius.circular(10)),
                        color: Colors.green[50],
                        boxShadow: [
                          new BoxShadow(
                              color: Colors.green[50],
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
                          style: TextStyle(color: Colors.green),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(6.0),
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        border: new Border.all(
                            color: Colors.green[50],
                            width: 5.0,
                            style: BorderStyle.solid),
                        borderRadius: new BorderRadius.all(Radius.circular(10)),
                        color: Colors.green[50],
                        boxShadow: [
                          new BoxShadow(
                              color: Colors.green[50],
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
                          style: TextStyle(color: Colors.red[900]),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(6.0),
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        border: new Border.all(
                            color: Colors.green[50],
                            width: 5.0,
                            style: BorderStyle.solid),
                        borderRadius: new BorderRadius.all(Radius.circular(10)),
                        color: Colors.green[50],
                        boxShadow: [
                          new BoxShadow(
                              color: Colors.green[50],
                              offset: new Offset(0.0, 3.0),
                              blurRadius: 5.0,
                              spreadRadius: 3.0)
                          //BoxShadow
                          //BoxShadow
                        ],
                      ),
                      child: TextButton(
                        child: Text(
                          'Drama',
                          style: TextStyle(color: Colors.grey),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(6.0),
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        border: new Border.all(
                            color: Colors.green[50],
                            width: 5.0,
                            style: BorderStyle.solid),
                        borderRadius: new BorderRadius.all(Radius.circular(10)),
                        color: Colors.green[50],
                        boxShadow: [
                          new BoxShadow(
                              color: Colors.green[50],
                              offset: new Offset(0.0, 3.0),
                              blurRadius: 5.0,
                              spreadRadius: 3.0)
                          //BoxShadow
                          //BoxShadow
                        ],
                      ),
                      child: TextButton(
                        child: Text(
                          'Roman',
                          style: TextStyle(color: Colors.purple),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                      height: 30,
                    ),
                      Text('Watched Movies',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://s359.kapook.com/rq/450/auto/50/pagebuilder/55ae0d4b-ccb2-4fef-94af-29ac022dc3fc.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                      ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Wonder Woman',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            SizedBox(
                      height: 10,
                    ),
                            Text('Acction,Adventure,Sci-Fi,Roman')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://cdni-hw.bugaboo.tv/dm/sz-md/i/mg/8/d/e/8dedcbc4278315588c6ce535c6ffc271_justice_league_team_posterbanner.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                      ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Justice League',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            SizedBox(
                      height: 10,
                    ),
                            Text('Acction,Adventure,Sci-Fi,Roman')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://images-na.ssl-images-amazon.com/images/I/61yHvmh2ULL._SL1000_.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                      ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Arrival',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            SizedBox(
                      height: 10,
                    ),
                            Text('Acction,Adventure,Sci-Fi,Roman')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ])));
  }
}
