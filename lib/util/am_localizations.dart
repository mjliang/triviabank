
import 'dart:async';

import 'package:intl/intl.dart' as intl;
import 'package:intl/date_symbol_data_local.dart' as intl;
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:triviabank/l10n/messages_all.dart';

class AmLocalizations {

  static const LocalizationsDelegate<AmLocalizations> delegate = _AmLocalizationsDelegate();

  static Future<AmLocalizations> load(Locale locale) {
    final String name = locale.countryCode == null ? locale.languageCode : locale.toString();
    final String localeName = intl.Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      intl.Intl.defaultLocale = localeName;
      return new AmLocalizations();
    });
  }

  static AmLocalizations of(BuildContext context) {
    return Localizations.of<AmLocalizations>(context, AmLocalizations);
  }

  String get appTitle => intl.Intl.message('Trivia Bank');

  String get emailAddress => intl.Intl.message('Email Address');

  String get emailAddressHint => intl.Intl.message('you@example.com');

  String get password => intl.Intl.message('Password');

  String get login => intl.Intl.message('Login');

  String get logout => intl.Intl.message('Logout');

  String get back => intl.Intl.message('Back');

  String get next => intl.Intl.message('Next');

  String get ok => intl.Intl.message('OK');

  String get yesWithExclamation => intl.Intl.message('Yes!');

  String get cancel => intl.Intl.message('Cancel');

  String get addMore => intl.Intl.message('Add more');

  String get addMoreToBalance => intl.Intl.message('Want to add more to your balance? Answer questions correctly to earn more.');

  String get errorRetrievingBalance => intl.Intl.message('Error occured retrieving balance.');

  String get triviaTime => intl.Intl.message('Trivia Time');

  //String youHaveNumberOfQuestions(int numberOfQuestions) => intl.Intl.message("You have $numberOfQuestions questions below", args: [numberOfQuestions], name: 'youHaveNumberOfQuestions');

  //String currentBalanceStringFormat(String balance) => intl.Intl.message("Current balance is: $balance", args: [balance], name: 'currentBalanceStringFormat');

  String get tryToEarnMore => intl.Intl.message('Try to earn More');

  String get welcome => intl.Intl.message('Welcome');
}

class _AmLocalizationsDelegate extends LocalizationsDelegate<AmLocalizations> {
  const _AmLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en'].contains(locale.languageCode);
  }

  @override
  Future<AmLocalizations> load(Locale locale) {
    return AmLocalizations.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<AmLocalizations> old) {
    return false;
  }
}