import 'package:fluttertestcountapp/counter_model.dart';
import 'package:state_notifier/state_notifier.dart';

class CountNotifier extends StateNotifier<CounterModel> {
  CountNotifier() : super(const CounterModel());

  void next() {
    state = state.increment();
  }
}
