import 'package:flutter/material.dart';
import '../home_bloc.dart';
import '../home_module.dart';

class NoConnection extends StatelessWidget {
  const NoConnection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 18),
      child: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('  Sem conexão :(',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 1.9,
                  child: Image.asset("assets/nonet.png"),
                ),
                Column(
                  children: <Widget>[],
                ),
              ],
            ),
            SizedBox(height: 10),
            RaisedButton(
              elevation: 0.0,
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 14),
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.blue[800], width: 2)),
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Text('Tentar reconectar',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 16)),
              onPressed: HomeModule.to.getBloc<HomeBloc>().getPosts,
            )
          ],
        ),
      ),
    );
  }
}
