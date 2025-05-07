import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jlpt_app/bloc/authentication/auth_bloc.dart';
import 'package:jlpt_app/bloc/authentication/auth_state.dart';
import 'package:jlpt_app/views/authentication_screen/login_screen.dart';

class MyAuthenticateGate extends StatefulWidget {
  const MyAuthenticateGate({super.key});

  @override
  State<MyAuthenticateGate> createState() => _MyAuthenticateGateState();
}

class _MyAuthenticateGateState extends State<MyAuthenticateGate> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if(state is AuthAuthenticated) {
          return Scaffold(body: Center(child: Text('Cần đăng nhập !'),),);
        } else {
          return LoginScreen();
        }
      },
    );
  }
}