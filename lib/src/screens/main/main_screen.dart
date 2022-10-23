import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:login_application/src/router/routing_constant.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Center(
          child: CupertinoButton(
            child: Text('Exit'),
            onPressed: (){
              FirebaseAuth.instance.signOut().then((value) {
                Navigator.pushNamed(context, SplahRoute);
              });
            },
          )
        )
      ),
    );
  }
}