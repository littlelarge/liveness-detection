import 'package:dartz/dartz.dart';
import 'package:liveness_detection/src/domain/domain.dart';

Value<String> validateEmailAddress(String input) {
  final emailRegex = RegExp(r'^\S+@\S+\.\S+$');

  if (emailRegex.hasMatch(input)) {
    return right(input);
  } else {
    return left(
      ValueFailure.invalidEmail(failedValue: input),
    );
  }
}

Value<String> validatePassword({
  required String input,
  required String email,
  required String firstName,
}) {
  // TODO(littlelarge): implement password validation
  final inputLowerCase = input.toLowerCase();
  final emailLowerCase = email.toLowerCase();
  final firstNameLowerCase = firstName.toLowerCase();

  final hasAtLeast8Characters = input.length >= 8;
  final hasNotIncludeNameOrEmail =
      (emailLowerCase.isEmpty || !inputLowerCase.contains(emailLowerCase)) &&
          (firstNameLowerCase.isEmpty ||
              !inputLowerCase.contains(firstNameLowerCase));
  final hasAtLeastOneSymbolOrNumber =
      RegExp(r'[A-Za-zа-яА-Я]').hasMatch(input) &&
          RegExp(r'[0-9]').hasMatch(input);
  final hasNotContainSpaces = !input.contains(' ');

  if (hasAtLeast8Characters &&
      hasNotIncludeNameOrEmail &&
      hasAtLeastOneSymbolOrNumber &&
      hasNotContainSpaces) {
    return right(input);
  } else {
    return left(
      ValueFailure.invalidPassword(
        hasAtLeast8Characters: hasAtLeast8Characters,
        hasNotIncludeNameOrEmail: hasNotIncludeNameOrEmail,
        hasAtLeastOneSymbolOrNumber: hasAtLeastOneSymbolOrNumber,
        hasNotContainSpaces: hasNotContainSpaces,
        failedValue: input,
      ),
    );
  }
}

Value<String> validateUrl(
  String input,
  bool needToValidateEmpty,
) {
  if (needToValidateEmpty) {
    if (input.isNotEmpty) {
      if (_isDigit(input.substring(0, 1))) {
        final ipRegex = RegExp(
          r'^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$',
        );

        if (ipRegex.hasMatch(input)) {
          return right(input);
        } else {
          return left(
            ValueFailure.invalidIp(failedValue: input),
          );
        }
      } else {
        final domainRegex =
            RegExp(r'^[a-zA-Z0-9]+\.[a-zA-Z0-9]+\.[a-zA-Z0-9]+$');

        if (domainRegex.hasMatch(input)) {
          return right(input);
        } else {
          return left(
            ValueFailure.invalidUrl(failedValue: input),
          );
        }
      }
    } else {
      return left(
        ValueFailure.cantBeEmpty(failedValue: input),
      );
    }
  } else {
    return right(input);
  }
}

bool _isDigit(String s) {
  return int.tryParse(s) != null;
}

Value<String> validatePhoneNumber(String input) {
  final phoneNumberRegex = RegExp(r'^(\+996|996|0)\d{9}$');

  if (phoneNumberRegex.hasMatch(input)) {
    return right(input);
  } else {
    return left(
      ValueFailure.invalidPhoneNumber(failedValue: input),
    );
  }
}

Value<String> validateEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(
      ValueFailure.cantBeEmpty(failedValue: input),
    );
  }
}
