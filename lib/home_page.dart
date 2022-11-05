import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff339966),
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Color(0xffcccccc),
              radius: 40,
              backgroundImage: AssetImage("/22.webp"),
            ),
            Text(
              "Bobur Flutter",
              style: GoogleFonts.poorStory(fontSize: 60, color: Colors.white),
            ),
            Text(
              "Flutter DEVELOPER",
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: Color(0xffffffff),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(0.5),
              child: Divider(
                indent: 100,
                endIndent: 100,
                color: Colors.white,
                height: 10,
                thickness: 1,
              ),
            ),
            Form(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(1),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      helperText: "Need your login number",
                      helperStyle:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Number",
                      hintText: "Number",
                      prefixIcon: Icon(Icons.call),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      helperText: "Need your login email",
                      helperStyle:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Email",
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
