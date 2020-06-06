import 'package:equatable/equatable.dart';

//実際はfreezedとか使った方がよい
class Counter extends Equatable {
  const Counter({this.count = 0});

  Counter increment() {
    final int nextCount = count + 1;
    if (nextCount > 9) {
      return const Counter(count: 0);
    }
    return Counter(count: nextCount);
  }

  final int count;
  @override
  bool get stringify => true;
  @override
  List<Object> get props => <Object>[count];
}
