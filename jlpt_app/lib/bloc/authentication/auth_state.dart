import 'package:equatable/equatable.dart';
import 'package:jlpt_app/models/user.dart';

abstract class AuthState extends Equatable {
  @override
  List<Object?> get props => [];
}

// ignore: camel_case_types
class AuthInitial extends AuthState {}

// ignore: camel_case_types
class AuthAuthenticated extends AuthState {
  final User user;
  AuthAuthenticated({required this.user});
  @override
  List<Object?> get props => [user];
}

// ignore: camel_case_types
class AuthLoading extends AuthState {}

// ignore: camel_case_types
class AuthUnauthenticated extends AuthState {}

// ignore: camel_case_types, must_be_immutable
class AuthError extends AuthState {
  String? message;
  AuthError(this.message);
   @override
  List<Object?> get props => [message];
}

