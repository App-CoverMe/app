import 'package:formz/formz.dart';

enum UsernameValidationError { empty, tooShort }

class Username extends FormzInput<String, UsernameValidationError> {
  const Username.pure() : super.pure('');
  const Username.dirty([String value = '']) : super.dirty(value);

  @override
  UsernameValidationError validator(String value) {
    if (value.length == 0) {
      return UsernameValidationError.empty;
    }
    if (value.length < 3) {
      return UsernameValidationError.tooShort;
    }
    return null;
  }

  String get errorString {
    switch (this.error) {
      case UsernameValidationError.empty:
        return null;
      case UsernameValidationError.tooShort:
        return 'Username too short';
      default:
        return null;
    }
  }
}
