import 'package:easy/easy.dart';
import 'package:rest/src/repositories/post_repository.dart';
import 'package:rest/src/models/post_model.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc extends EasyBloc {
  final PostRepository repo;

  HomeBloc(this.repo);

  var listPost = BehaviorSubject<List<PostModel>>();
  Sink<List<PostModel>> get responseIn => listPost.sink;
  Observable<List<PostModel>> get responseOut => listPost.stream;

  void getPosts() async {
    try {
      var res = await repo.getPosts();
      responseIn.add(res);
    } catch (e) {
      listPost.addError(e);
    }
  }

  @override
  void dispose() {
    listPost.close();
    super.dispose();
  }
}
