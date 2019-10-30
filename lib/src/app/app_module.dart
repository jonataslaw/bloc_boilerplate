import 'package:easy/easy.dart';
import 'package:flutter/material.dart';
import 'package:rest/src/app/app_widget.dart';
import 'package:rest/src/app/app_bloc.dart';
import 'package:rest/src/shared/network/http_instance.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc(
          (i) => AppBloc(),
        ),
      ];

  @override
  List<Dependency> get dependencies => [
        Dependency((i) => HttpInstance()),
      ];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
