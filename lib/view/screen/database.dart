// How many types of databases are there in Flutter?
// In general, databases are of two types,
// 1). Relational
// 2). Non-Relational databases.
// Relational databases are the sets of data that have a relationship with each other.
// The data sets have data stored in the form of
// tables with rows and columns.

import 'package:flutter/material.dart';
import 'package:inno_tech/export.dart';

class DataBase extends StatelessWidget {
  const DataBase({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("DataBase"),
      ),
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/api.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              Colors.red.withOpacity(1),
              Colors.black.withOpacity(0.5)
            ])),
          ),
        ],
      ),
    );
  }
}
