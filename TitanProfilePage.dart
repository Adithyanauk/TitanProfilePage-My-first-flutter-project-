import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Profile_page(),
    debugShowCheckedModeBanner: false,
  ));
}

class Profile_page extends StatefulWidget {
  const Profile_page({super.key});

  @override
  State<Profile_page> createState() => _Profile_pageState();
}

class _Profile_pageState extends State<Profile_page> {
  int titanlevel=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text("Titan Page",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(padding:EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/eren_logo.jpg'),
                      radius: 80.0,

                    ),
                    SizedBox(width: 0.0,),
                    Icon(Icons.add_circle_outline_rounded,
                    color: Colors.grey[400],)
                  ],
                ),
            ),

            Divider(height: 100.0,
            color: Colors.grey[800],),
            Text("Name",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey,
                fontStyle: FontStyle.italic,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 2.0),
            Text("Eren Yeager",
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 40.0,),

            Text("Current Titan Level",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey,
                fontStyle: FontStyle.italic,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 2.0),
            Text("$titanlevel",
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                letterSpacing: 2.0,
              ),
            ),

          SizedBox(height: 40.0,),
            Row(
              children: [
                Icon(
                  Icons.email_outlined,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0,),
                Text("erenyeageraot@gmail.com",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),),
              ],
            )

          ],
        ),
      ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(20.0),
          child: FloatingActionButton(
              onPressed: (){
               setState(() {
              titanlevel++;
            });
          },
          child: Icon(Icons.add,
          color: Colors.black,),
            backgroundColor: Colors.amber,
              ),
        ),
    );
  }
}
