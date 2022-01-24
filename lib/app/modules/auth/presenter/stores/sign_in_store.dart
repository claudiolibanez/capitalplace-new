import 'package:capitalplace/app/core/error/failure.dart';
import 'package:mobx/mobx.dart';

part 'sign_in_store.g.dart';

class SignInStore = _SignInStoreBase with _$SignInStore;

abstract class _SignInStoreBase with Store {
  @observable
  String email = "";
  @action
  void setEmail(String value) => email = value;

  @observable
  String? errorEmail;
  @action
  void setErrorEmail(String value) => errorEmail = value;

  @observable
  String password = "";
  @action
  void setPassword(String value) => password = value;

  @observable
  String? errorPassword;
  void setErrorPassword(String value) => errorPassword = value;

  @computed
  bool get isEmailValid => RegExp(
          r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$")
      .hasMatch(email);

  @computed
  bool get isPasswordValid => password.length >= 8;

  @computed
  bool get isFormValid => isEmailValid && isPasswordValid;

  @observable
  bool isLoading = false;
  @action
  void setLoading(bool value) => isLoading = value;

  @observable
  bool isPasswordVisible = false;
  @action
  void togglePasswordVisibility() => isPasswordVisible = !isPasswordVisible;

  @action
  Future<void> handleSubmit() async {
    try {
      if (isFormValid) {
        setLoading(true);
      } else {
        throw EmptyFormFailure();
      }
    } catch (error) {
      throw ServerFailure();
    } finally {
      setLoading(false);
    }
  }
}
