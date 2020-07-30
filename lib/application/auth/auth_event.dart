part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  /// Bloc naming convention says to use past tense names
    const factory AuthEvent.authCheckRequested() = AuthCheckRequested;
    const factory AuthEvent.signedOut() = SignedOut;
}
