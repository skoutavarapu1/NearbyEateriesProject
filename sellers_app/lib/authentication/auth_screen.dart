import 'package:flutter/material.dart';
import 'package:sellers_app/authentication/login.dart';
import 'package:sellers_app/authentication/register.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 57, 2, 2),
                  Colors.black26,
                ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(5.5, 0.0),
                stops: [0.0, 0.2],
                tileMode: TileMode.clamp,
              )),
            ),
            title: const Text("Nearby Eateries",
                style: TextStyle(
                  fontSize: 45,
                  color: Colors.white,
                  fontFamily: "Lobster",
                )),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.white,
                  ),
                  text: "Login",
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  text: "Register",
                ),
              ],
              indicatorColor: Colors.white,
              indicatorWeight: 6,
            ),
          ),
          body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 57, 2, 2),
                Colors.black26,
              ],
            )),
            child: const TabBarView(children: [
              LoginScreen(),
              RegisterScreen(),
            ]),
          ),
        ));
  }
}
