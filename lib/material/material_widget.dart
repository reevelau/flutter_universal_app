import 'package:flutter/material.dart';
//! MaterialWidget
class MaterialWidge extends StatelessWidget {
  final String message;

  const MaterialWidge({Key? key, this.message = ""}): super(key:key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[150],
        appBar: PreferredSize(
          preferredSize:
              const Size.fromHeight(100.0), // here the desired height
          child: AppBar(
            centerTitle: true,
            toolbarHeight: 150,
            title: const Text("Material App's Demo"),
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Text(
            message,
            style: const TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false);
  }

}