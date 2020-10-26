import 'package:application_serialone/get_it.dart';
import 'package:application_serialone/screens/home_page.dart';
import 'package:application_serialone/viewmodels/posts_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  setupGetIt();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
          create:(context)=> getIt <PostsViewModel>(),
          child: HomePage()),
    );
  }
}

