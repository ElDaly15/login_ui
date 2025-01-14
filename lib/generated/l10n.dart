// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Start App`
  String get appName {
    return Intl.message(
      'Start App',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Discover Your`
  String get discoverYour {
    return Intl.message(
      'Discover Your',
      name: 'discoverYour',
      desc: '',
      args: [],
    );
  }

  /// `Dream Job Here`
  String get dreamJobHere {
    return Intl.message(
      'Dream Job Here',
      name: 'dreamJobHere',
      desc: '',
      args: [],
    );
  }

  /// `Explore all the existing job roles based on your interest and study major`
  String get exploreMessage {
    return Intl.message(
      'Explore all the existing job roles based on your interest and study major',
      name: 'exploreMessage',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginButton {
    return Intl.message(
      'Login',
      name: 'loginButton',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get registerButton {
    return Intl.message(
      'Register',
      name: 'registerButton',
      desc: '',
      args: [],
    );
  }

  /// `Login here`
  String get loginTitle {
    return Intl.message(
      'Login here',
      name: 'loginTitle',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back you've been missed!`
  String get welcomeMessage {
    return Intl.message(
      'Welcome back you\'ve been missed!',
      name: 'welcomeMessage',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get emailHint {
    return Intl.message(
      'Email',
      name: 'emailHint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get passwordHint {
    return Intl.message(
      'Password',
      name: 'passwordHint',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signInButton {
    return Intl.message(
      'Sign in',
      name: 'signInButton',
      desc: '',
      args: [],
    );
  }

  /// `Create new account`
  String get createNewAccount {
    return Intl.message(
      'Create new account',
      name: 'createNewAccount',
      desc: '',
      args: [],
    );
  }

  /// `Or continue with`
  String get orContinueWith {
    return Intl.message(
      'Or continue with',
      name: 'orContinueWith',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Your Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Your Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccountTitle {
    return Intl.message(
      'Create Account',
      name: 'createAccountTitle',
      desc: '',
      args: [],
    );
  }

  /// `Create an account so you can explore all the existing jobs`
  String get createAccountMessage {
    return Intl.message(
      'Create an account so you can explore all the existing jobs',
      name: 'createAccountMessage',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUpButton {
    return Intl.message(
      'Sign Up',
      name: 'signUpButton',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account`
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullNameHint {
    return Intl.message(
      'Full Name',
      name: 'fullNameHint',
      desc: '',
      args: [],
    );
  }

  /// `Options`
  String get Options {
    return Intl.message(
      'Options',
      name: 'Options',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get darkMode {
    return Intl.message(
      'Dark Mode',
      name: 'darkMode',
      desc: '',
      args: [],
    );
  }

  /// `Select Language`
  String get selectLanguage {
    return Intl.message(
      'Select Language',
      name: 'selectLanguage',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
