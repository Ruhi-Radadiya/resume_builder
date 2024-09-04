import 'dart:io';

import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
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
        appBar: AppBar(
          title: const Text("Quotes"),
        ),
        body: Column(
          children: [
            // quotesGridView(),
          ],
        ),
      ),
    );
  }
}
