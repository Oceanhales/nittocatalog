import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _counter = 0;

//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
        SliverAppBar(
        expandedHeight: 250.0,
        floating: true,
        pinned: false,
        title: Center(child: Text("Nitto"),),
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset('assets/appbarimage.jpg',
            fit: BoxFit.cover,),),
      ),
      SliverList(delegate: SliverChildBuilderDelegate((context, index) =>
        AvailableTime(),
      )

//          SliverFillRemaining(
//            child: ListView(
//              children: <Widget>[
//                AvailableTime(),
//              ],
//            )
         ),
        ],
      ),
    );
  }
}

class AvailableTime extends StatelessWidget {
  const AvailableTime({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //SizedBox(height: 10.0),
          CustomCard('Organisation', 'Supporting Digital Transformation'),
          CustomCard(
              'Small & Medium Enterprise', 'Enabling Business Visualisation'),
          CustomCard('People', 'Empowering With Digital Service'),
          CustomCard('Smart Factory 4.0', 'Supporting Digital Transformation'),
          CustomCard('Organisation', 'Supporting Digital Transformation'),
          CustomCard('Organisation', 'Supporting Digital Transformation'),
          CustomCard('Organisation', 'Supporting Digital Transformation'),
          CustomCard('Organisation', 'Supporting Digital Transformation'),
          CustomCard('Organisation', 'Supporting Digital Transformation'),
          CustomCard('Organisation', 'Supporting Digital Transformation'),
          CustomCard('Organisation', 'Supporting Digital Transformation'),

        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  String name;
  String details;


  CustomCard(this.name,
      this.details,);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2, right: 2, bottom: 0, top: 20),
      child: Container(
        //color: Colors.blueAccent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 2.0),
              child: Container(child:
              CircleAvatar(
                child: Icon(Icons.menu,
                color: Colors.white),
                radius: 30,
                backgroundColor: Colors.black54
                //Color(0xFF0d6898),
              ),
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Container(
                    //color: Colors.grey,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.75,
                    //height:40,
                    child: Text(
                      name,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.w500),
                      maxLines: 1,

                    ),


                  ),


                ),
                Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.75,
                  //color: Colors.grey,
                  child: Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 3),
                      child: Text(details,
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                        maxLines: 1,)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
