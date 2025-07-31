import 'package:actiday/desktop.dart';
import 'package:actiday/mobile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint){
      if(constraint.maxWidth >= 600){
        return Desktop();
      }
      else {
        return Mobile();
      }
    });
  }
}
