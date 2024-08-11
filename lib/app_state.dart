import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _userActivityLevel =
          prefs.getString('ff_userActivityLevel') ?? _userActivityLevel;
    });
    _safeInit(() {
      _userFitnessLevel =
          prefs.getString('ff_userFitnessLevel') ?? _userFitnessLevel;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _userAge = 0;
  int get userAge => _userAge;
  set userAge(int value) {
    _userAge = value;
  }

  String _userGender = '';
  String get userGender => _userGender;
  set userGender(String value) {
    _userGender = value;
  }

  int _userWeight = 0;
  int get userWeight => _userWeight;
  set userWeight(int value) {
    _userWeight = value;
  }

  int _userHeight = 0;
  int get userHeight => _userHeight;
  set userHeight(int value) {
    _userHeight = value;
  }

  String _userActivityLevel = '';
  String get userActivityLevel => _userActivityLevel;
  set userActivityLevel(String value) {
    _userActivityLevel = value;
    prefs.setString('ff_userActivityLevel', value);
  }

  String _userFitnessLevel = '';
  String get userFitnessLevel => _userFitnessLevel;
  set userFitnessLevel(String value) {
    _userFitnessLevel = value;
    prefs.setString('ff_userFitnessLevel', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
