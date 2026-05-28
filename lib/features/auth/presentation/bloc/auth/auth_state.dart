import 'package:equatable/equatable.dart';
import 'package:customer_nzubia_global/features/auth/domain/entities/user_entity.dart';

enum AuthStatus { unknown, authenticated, unauthenticated }

class AuthState extends Equatable {
  final AuthStatus status;
  final UserEntity? user;

  const AuthState({
    this.status = AuthStatus.unknown,
    this.user,
  });

  factory AuthState.authenticated(UserEntity user) {
    return AuthState(status: AuthStatus.authenticated, user: user);
  }

  factory AuthState.unauthenticated() {
    return const AuthState(status: AuthStatus.unauthenticated);
  }

  @override
  List<Object?> get props => [status, user];
}
