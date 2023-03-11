import 'package:app/models/post_model.dart';
import 'package:app/repositories/home_repository.dart';

import 'package:dio/dio.dart';

final dio = Dio();

class HomeRepositoryImp implements HomeRepository {
  @override
  Future<List<PostModel>> getList() async {
    Response response;
    response = await dio.get('https://jsonplaceholder.typicode.com/posts');

    return (response.data as List).map((e) => PostModel.fromJson(e)).toList();
  }
}
