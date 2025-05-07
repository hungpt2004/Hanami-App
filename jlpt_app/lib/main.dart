import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jlpt_app/bloc/authentication/auth_bloc.dart';
import 'package:jlpt_app/repository/authentication_repo/authentication_repository.dart';
import 'package:jlpt_app/theme/app_theme.dart';
import 'package:jlpt_app/views/authentication_screen/login_screen.dart';
import 'package:jlpt_app/views/splash_screen/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '日本語 JLPT Pratice',
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.system,
      // darkTheme: AppTheme.darkTheme,
      home: MultiBlocProvider(providers: [
        BlocProvider(create: (context) => AuthBloc(AuthRepository()),)
      ], child: LoginScreen()),
    );
  }
}
