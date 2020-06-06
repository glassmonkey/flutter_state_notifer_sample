import 'package:fluttertestcountapp/counter_model.dart';
import 'package:state_notifier/state_notifier.dart';

class CountNotifier extends StateNotifier<Counter> {
  CountNotifier() : super(const Counter());

  void next() {
    state = state.increment();
  }
}
