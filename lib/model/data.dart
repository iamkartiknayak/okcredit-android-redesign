import 'package:flutter/material.dart';
import 'package:redesign_okcredit/pages/ledger.dart';
import 'package:redesign_okcredit/pages/settings.dart';
import 'package:redesign_okcredit/widgets/ledger/tab.dart';

class DataModel with ChangeNotifier {
  final List<Widget> _navigationOptions = [
    const LedgerPage(),
    const SettingsPage(),
  ];

  List<Widget> get navigationOptions => _navigationOptions;

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void updateCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  final List<Widget> _tabs = [
    const CustomTab(title: 'CUSTOMER'),
    const CustomTab(title: 'SUPPLIER')
  ];

  List<Widget> get tabs => _tabs;

  String _selectedCustomerCategory = 'Customer';
  String get selectedCustomerCategory => _selectedCustomerCategory;

  void updateCustomerCategory(String? category) {
    _selectedCustomerCategory = category!;
    notifyListeners();
  }

  final List<List> _reminderDateFilter = [
    ['Today', false],
    ['Pending', false],
    ['Upcoming', false],
  ];

  List<List> get reminderDateFilter => _reminderDateFilter;

  void updateReminderFilter(int index) {
    _reminderDateFilter[index][1] = !_reminderDateFilter[index][1];
    notifyListeners();
  }

  final List<String> _sortByFilter = [
    'Name',
    'Amount',
    'Latest',
  ];

  List<String> get sortByFilter => _sortByFilter;

  String _selectedSortByFilter = 'Latest';
  String get selectedSortByFilter => _selectedSortByFilter;

  void updatesortByFilter(String? filter) {
    _selectedSortByFilter = filter!;
    notifyListeners();
  }

  void resetFilter() {
    _reminderDateFilter.forEach((element) => element[1] = false);
    _selectedSortByFilter = 'Latest';
    notifyListeners();
  }

  bool _isAppLockEnabled = false;
  bool get isAppLockEnabled => _isAppLockEnabled;

  bool _isPaymentPasswordEnabled = false;
  bool get isPaymentPasswordEnabled => _isPaymentPasswordEnabled;

  bool _isFingerprintEnabled = true;
  bool get isFingerprintEnabled => _isFingerprintEnabled;

  void toggleSwitch(SwitchType type) {
    switch (type) {
      case SwitchType.appLock:
        _isAppLockEnabled = !_isAppLockEnabled;
        break;

      case SwitchType.paymentPassword:
        _isPaymentPasswordEnabled = !_isPaymentPasswordEnabled;
        break;

      case SwitchType.fingerPrint:
        _isFingerprintEnabled = !_isFingerprintEnabled;
        break;
    }

    notifyListeners();
  }

  String _selectedLanguage = 'English';
  String get selectedLanguage => _selectedLanguage;

  final List<List> _languageList = [
    ['English', true],
    ['ಕನ್ನಡ', false],
    ['हिंदी', false],
    ['Hinglish', false],
    ['मराठी', false],
    ['ગુજરાતી', false],
    ['தமிழ்', false],
    ['తెలుగు', false],
    ['অসমীয়া', false],
  ];

  List<List> get languageList => _languageList;

  void updateAppLanguage(String language) {
    _languageList.forEach(
      (element) {
        if (element[0] != language) {
          element[1] = false;
        } else {
          element[1] = true;
        }
      },
    );

    _selectedLanguage = language;
    notifyListeners();
  }
}

enum SwitchType {
  appLock,
  paymentPassword,
  fingerPrint,
}
