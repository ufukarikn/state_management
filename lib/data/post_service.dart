import 'dart:convert';

import 'package:application_serialone/models/posts.dart';
import 'package:http/http.dart' as http;
class PostsService{
  static const baseUrl="https://jsonplaceholder.typicode.com";

  Future<List<Posts>> getAllPostsService() async{
    final url= baseUrl+"/posts";
    final response = await http.get(url);
    if(response.statusCode!=200){
      throw Exception("StatusCode Error");
    }
    final jsonData=json.decode(response.body);
    return List<Posts>.from(jsonData.map((x)=> Posts.fromJson(x)));
  }
}