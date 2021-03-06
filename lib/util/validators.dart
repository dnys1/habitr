final _emailRegex = RegExp(r'^\S+@\S+$');
final _codeRegex = RegExp(r'\d{6}');

String? validateUsername(String? username) {
  if (username == null || username.isEmpty) {
    return 'Username cannot be empty';
  }
  return null;
}

String? validatePassword(String? password) {
  if (password == null || password.isEmpty) {
    return 'Password cannot be empty';
  }
  return null;
}

String? validateEmail(String? email) {
  if (email == null || email.isEmpty) {
    return 'Email cannot be empty';
  }
  if (!_emailRegex.hasMatch(email)) {
    return 'Invalid email format';
  }
  return null;
}

String? validateCode(String? code) {
  if (code == null || code.isEmpty) {
    return 'Please enter the verification code';
  }
  if (!_codeRegex.hasMatch(code)) {
    return 'Invalid code format. Must be 6 digits.';
  }
  return null;
}

String? validatePasswordRetype(String? password, String? passwordRetype) {
  if (passwordRetype == null || passwordRetype.isEmpty) {
    return 'Must retype password';
  }
  if (password != passwordRetype) {
    return 'Passwords do not match';
  }
  return null;
}

String? Function(T?) createGenericValidator<T>(String name) {
  return (T? value) {
    if (value == null || (value is String && value.isEmpty)) {
      return '$name cannot be empty.';
    }

    return null;
  };
}
