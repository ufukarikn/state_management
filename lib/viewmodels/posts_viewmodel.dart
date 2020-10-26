
import 'package:application_serialone/data/repository.dart';
import 'package:application_serialone/get_it.dart';
import 'package:application_serialone/models/posts.dart';
import 'package:flutter/material.dart';

enum PostsViewState{LoadingState,LoadedState,ErrorState}

class PostsViewModel with ChangeNotifier{
  PostsViewState _state;
  Repository repository=getIt<Repository>();
  List<Posts> response;
  //Posts response;
  PostsViewModel(){
    _state=PostsViewState.LoadingState;
  }

  PostsViewState get state => _state;

  set state(PostsViewState value) {
    _state = value;
    notifyListeners();
  }

  Future<List<Posts>> getAllPostsVievModel() async{
    try{
      response=await repository.getAllPostsRepository();
      state=PostsViewState.LoadedState;
    }catch(e){
      state=PostsViewState.ErrorState;
    }
    return response;
  }


}