import 'package:formz/formz.dart';

enum PasswordValidationError { empty, tooShort, missingSpecialCharacters }

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty([String value = '']) : super.dirty(value);

  @override
  PasswordValidationError validator(String value) {
    if (value.length == 0) {
      return PasswordValidationError.empty;
    }
    if (value.length < 3) {
      return PasswordValidationError.tooShort;
    }
    // if (value.contains(RegExp("[^\w\s]"))) {
    //   return PasswordValidationError.missingSpecialCharacters;
    // }
    return null;
  }

  String get errorString {
    switch (this.error) {
      case PasswordValidationError.empty:
        return null;
      case PasswordValidationError.tooShort:
        return 'Password too short';
      case PasswordValidationError.missingSpecialCharacters:
        return 'Password missing special characters';
      default:
        return null;
    }
  }
}
