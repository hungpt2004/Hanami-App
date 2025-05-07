import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jlpt_app/bloc/authentication/auth_event.dart';
import 'package:jlpt_app/bloc/authentication/auth_state.dart';
import 'package:jlpt_app/repository/authentication_repo/authentication_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc(this.authRepository) : super(AuthInitial()) {
    on<SignInEvent>(_onSignInEvent);
  }

  Future<void> _onSignInEvent(SignInEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      final currentUser = await authRepository.signInWithEmailPassword(event.email, event.password);
      emit(AuthAuthenticated(user: currentUser));
    } catch (error) {
      emit(AuthError(error.toString()));
    }
  }
  
  

}