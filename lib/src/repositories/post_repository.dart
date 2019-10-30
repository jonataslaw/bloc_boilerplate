import 'dart:convert';
import 'dart:io';
import 'package:easy/easy.dart';
import 'package:rest/src/models/post_model.dart';
import 'package:rest/src/shared/network/api_constants.dart';
import 'package:rest/src/shared/network/http_instance.dart';


class PostRepository extends Disposable {
  final HttpInstance http;

  PostRepository(this.http);

  @override
  void dispose() {}

  Future<List<PostModel>> getPosts() async {
    try {
      var response = await http.client.get(
        Constants.posts,
      );
      return (json.decode(response.body) as List)
          .map((item) => PostModel.fromJson(item))
          .toList();
    } on SocketException catch (e) {
      throw (e.message);
    }
  }

   Future<List<PostModel>> setPosts() async {
    try {
      
      var response = await http.client.post(
        Constants.posts, 
      );
      return (json.decode(response.body) as List)
          .map((item) => PostModel.fromJson(item))
          .toList();
    } on SocketException catch (e) {
      throw (e.message);
    }
  }
}
