import 'package:flutter/cupertino.dart';
import 'package:login_application/src/router/routing_constant.dart';
import 'package:login_application/src/screens/register/register_screen.dart';

import '../screens/auth/auth_screen.dart';

class AppRouter{
  static Route generateRoute(RouteSettings routeSettings){
    switch (routeSettings.name) {
      case AuthRoute:
        return CupertinoPageRoute(
          builder: (context) => const AuthScreen(),
        );
      case RegisterRoute:
        return CupertinoPageRoute(
          builder: (context) => const RegisterScreen(),
        );
      default:
        return CupertinoPageRoute(
          builder: (context) => const  AuthScreen(),
        );
    }
  }
}