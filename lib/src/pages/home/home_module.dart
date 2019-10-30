import 'package:easy/easy.dart';
import 'package:flutter/material.dart';
import 'package:rest/src/app/app_module.dart';
import 'package:rest/src/pages/home/home_bloc.dart';
import 'package:rest/src/pages/home/home_page.dart';
import 'package:rest/src/repositories/post_repository.dart';
import 'package:rest/src/shared/network/http_instance.dart';

class HomeModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => HomeBloc(HomeModule.to.getDependency<PostRepository>())),
      ];

  @override
  List<Dependency> get dependencies => [
        Dependency(
            (i) => PostRepository(AppModule.to.getDependency<HttpInstance>())),
      ];

  @override
  Widget get view => HomePage();

  static Inject get to => Inject<HomeModule>.of();
}
