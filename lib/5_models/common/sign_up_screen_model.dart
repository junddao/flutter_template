import 'dart:async';

import 'package:equatable/equatable.dart';

class SignUpScreenModel extends Equatable {
  final bool? isAgreementTotal;
  final bool? isAgreement1;
  final bool? isAgreement2;
  final String? name;
  final String? birthdate;
  final String? password;
  final String? verificationPassword;
  final String? email;
  final String? emailVerificationCode;
  final String? emailVerifiedToken;
  final String? phone;
  final String? phoneVerificationCode;
  final String? phoneVerifiedToken;
  final String? verifiedTime;
  final Timer? timer;
  final String? verifiedType;
  
  const SignUpScreenModel({
    this.isAgreementTotal,
    this.isAgreement1,
    this.isAgreement2,
    this.name,
    this.birthdate,
    this.password,
    this.verificationPassword,
    this.email,
    this.emailVerificationCode,
    this.emailVerifiedToken,
    this.phone,
    this.phoneVerificationCode,
    this.phoneVerifiedToken,
    this.verifiedTime,
    this.timer,
    this.verifiedType,
  });

  SignUpScreenModel copyWith({
    bool? isAgreementTotal,
    bool? isAgreement1,
    bool? isAgreement2,
    String? name,
    String? birthdate,
    String? password,
    String? verifyPassword,
    String? email,
    String? emailVerificationCode,
    String? emailVerifiedToken,
    String? phone,
    String? phoneVerificationCode,
    String? phoneVerifiedToken,
    String? verifiedTime,
    Timer? timer,
    String? verifiedType,
  }) {
    return SignUpScreenModel(
      isAgreementTotal: isAgreementTotal ?? this.isAgreementTotal,
      isAgreement1: isAgreement1 ?? this.isAgreement1,
      isAgreement2: isAgreement2 ?? this.isAgreement2,
      name: name ?? this.name,
      birthdate: birthdate ?? this.birthdate,
      password: password ?? this.password,
      verificationPassword: verifyPassword ?? this.verificationPassword,
      email: email ?? this.email,
      emailVerificationCode: emailVerificationCode ?? this.emailVerificationCode,
      emailVerifiedToken: emailVerifiedToken ?? this.emailVerifiedToken,
      phone: phone ?? this.phone,
      phoneVerificationCode: phoneVerificationCode ?? this.phoneVerificationCode,
      phoneVerifiedToken: phoneVerifiedToken ?? this.phoneVerifiedToken,
      verifiedTime: verifiedTime ?? this.verifiedTime,
      timer: timer ?? this.timer,
      verifiedType: verifiedType ?? this.verifiedType,
    );
  }

  @override
  List<Object?> get props {
    return [
      isAgreementTotal,
      isAgreement1,
      isAgreement2,
      name,
      birthdate,
      password,
      verificationPassword,
      email,
      emailVerificationCode,
      emailVerifiedToken,
      phone,
      phoneVerificationCode,
      phoneVerifiedToken,
      verifiedTime,
      timer,
      verifiedType,
    ];
  }
}
