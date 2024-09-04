import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qoutes_app/list/quotes_grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (val) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text("⚠ Confirm Exit...!!!"),
            content: const Text("Are you sure, you want to EXIT !!!"),
            actions: [
              TextButton(
                onPressed: () {
                  exit(2);
                },
                child: const Text(
                  "Yes",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "No",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        );
      },
      child: Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          // backgroundColor: Colors.black,
          title: Text(
            "Quotes",
            style: GoogleFonts.vollkorn(
              textStyle: TextStyle(
                fontSize: 28.sp,
                // color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://i.pinimg.com/236x/5c/c0/48/5cc04839e38e72165e105355f9a13049.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              quotesGridView(),
            ],
          ),
        ),
      ),
    );
  }
}
