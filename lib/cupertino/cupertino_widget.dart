import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//! CupertinoWidget
class CupertinoWidget extends StatelessWidget {
  final String message;

  const CupertinoWidget(  { Key? key,  this.message = ""}): super(key:key);

  @override
  Widget build(BuildContext context){
    return CupertinoApp(
      home: CupertinoPageScaffold(
        backgroundColor: Colors.grey,
        navigationBar: CupertinoNavigationBar(
          middle: Text(message),
        ),
        child: Center(
          child: Container(
            alignment: Alignment.center,
            child: Text(
              message,
              style: const TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false);
  }
}