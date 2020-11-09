import 'package:my_app/app/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  String _title = 'Home View';
  String get title => '$_title counter:$counter';

  int _counter = 0;
  int get counter => _counter;

  final DialogService _dialogService = locator<DialogService>();

  void updateCounter() {
    _counter++;
    notifyListeners();
  }

  void openView() async {
    await _dialogService.showDialog(
      title: 'Sign Up Failure',
      description: "hello",
    );
  }
}
