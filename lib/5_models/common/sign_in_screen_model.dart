import 'package:equatable/equatable.dart';

class SignInScreenModel extends Equatable {
  final String? email;
  final String? password;

  const SignInScreenModel({
    this.email,
   this.password,
  });

  @override
  List<Object?> get props => [email, password];

  SignInScreenModel copyWith({
    String? email,
    String? password,
  }) {
    return SignInScreenModel(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
