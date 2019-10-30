import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rest/src/pages/home/home_bloc.dart';
import 'package:rest/src/pages/home/home_module.dart';
import 'package:rest/src/models/post_model.dart';

import 'components/connection_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = HomeModule.to.getBloc<HomeBloc>();

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    bloc.getPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Listagem"),
        centerTitle: true,
      ),
      body: StreamBuilder<List<PostModel>>(
        stream: bloc.responseOut,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print(snapshot.error.toString());
            return NoConnection();
          } else if (snapshot.hasData) {
            return ListView.builder(
              physics: BouncingScrollPhysics(),
              addAutomaticKeepAlives: true,
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: FlutterLogo(),
                  title: Text(snapshot.data[index].title),
                );
              },
            );
          } else {
            return Center(
              child: CupertinoActivityIndicator(),
            );
          }
        },
      ),
    );
  }
}
