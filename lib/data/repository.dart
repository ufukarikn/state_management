import 'package:application_serialone/data/post_service.dart';
import 'package:application_serialone/get_it.dart';
import 'package:application_serialone/models/posts.dart';

class Repository {

  PostsService postsService = getIt<PostsService>();

  Future<List<Posts>> getAllPostsRepository() async {
    return await postsService.getAllPostsService();
  }

}