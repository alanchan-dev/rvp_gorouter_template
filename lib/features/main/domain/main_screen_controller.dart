import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main_screen_controller.g.dart';

@riverpod
class MainScreenController extends _$MainScreenController {
  @override
  int build() {
    return 0;
  }

  void setCurrentIndex(int index) {
    state = index;
  }
}
