// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignInStore on _SignInStoreBase, Store {
  Computed<bool>? _$isEmailValidComputed;

  @override
  bool get isEmailValid =>
      (_$isEmailValidComputed ??= Computed<bool>(() => super.isEmailValid,
              name: '_SignInStoreBase.isEmailValid'))
          .value;
  Computed<bool>? _$isPasswordValidComputed;

  @override
  bool get isPasswordValid =>
      (_$isPasswordValidComputed ??= Computed<bool>(() => super.isPasswordValid,
              name: '_SignInStoreBase.isPasswordValid'))
          .value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_SignInStoreBase.isFormValid'))
          .value;

  final _$emailAtom = Atom(name: '_SignInStoreBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$errorEmailAtom = Atom(name: '_SignInStoreBase.errorEmail');

  @override
  String? get errorEmail {
    _$errorEmailAtom.reportRead();
    return super.errorEmail;
  }

  @override
  set errorEmail(String? value) {
    _$errorEmailAtom.reportWrite(value, super.errorEmail, () {
      super.errorEmail = value;
    });
  }

  final _$passwordAtom = Atom(name: '_SignInStoreBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$errorPasswordAtom = Atom(name: '_SignInStoreBase.errorPassword');

  @override
  String? get errorPassword {
    _$errorPasswordAtom.reportRead();
    return super.errorPassword;
  }

  @override
  set errorPassword(String? value) {
    _$errorPasswordAtom.reportWrite(value, super.errorPassword, () {
      super.errorPassword = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_SignInStoreBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$isPasswordVisibleAtom =
      Atom(name: '_SignInStoreBase.isPasswordVisible');

  @override
  bool get isPasswordVisible {
    _$isPasswordVisibleAtom.reportRead();
    return super.isPasswordVisible;
  }

  @override
  set isPasswordVisible(bool value) {
    _$isPasswordVisibleAtom.reportWrite(value, super.isPasswordVisible, () {
      super.isPasswordVisible = value;
    });
  }

  final _$handleSubmitAsyncAction =
      AsyncAction('_SignInStoreBase.handleSubmit');

  @override
  Future<void> handleSubmit() {
    return _$handleSubmitAsyncAction.run(() => super.handleSubmit());
  }

  final _$_SignInStoreBaseActionController =
      ActionController(name: '_SignInStoreBase');

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_SignInStoreBaseActionController.startAction(
        name: '_SignInStoreBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_SignInStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setErrorEmail(String value) {
    final _$actionInfo = _$_SignInStoreBaseActionController.startAction(
        name: '_SignInStoreBase.setErrorEmail');
    try {
      return super.setErrorEmail(value);
    } finally {
      _$_SignInStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_SignInStoreBaseActionController.startAction(
        name: '_SignInStoreBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_SignInStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_SignInStoreBaseActionController.startAction(
        name: '_SignInStoreBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_SignInStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void togglePasswordVisibility() {
    final _$actionInfo = _$_SignInStoreBaseActionController.startAction(
        name: '_SignInStoreBase.togglePasswordVisibility');
    try {
      return super.togglePasswordVisibility();
    } finally {
      _$_SignInStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
errorEmail: ${errorEmail},
password: ${password},
errorPassword: ${errorPassword},
isLoading: ${isLoading},
isPasswordVisible: ${isPasswordVisible},
isEmailValid: ${isEmailValid},
isPasswordValid: ${isPasswordValid},
isFormValid: ${isFormValid}
    ''';
  }
}
