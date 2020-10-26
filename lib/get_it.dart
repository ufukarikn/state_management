
import 'package:application_serialone/data/post_service.dart';
import 'package:application_serialone/data/repository.dart';
import 'package:application_serialone/viewmodels/posts_viewmodel.dart';
import 'package:get_it/get_it.dart';

GetIt getIt=GetIt.instance;

void setupGetIt(){
  getIt.registerLazySingleton(() => PostsService());
  getIt.registerLazySingleton(() => Repository());
  getIt.registerFactory(() => PostsViewModel());
}