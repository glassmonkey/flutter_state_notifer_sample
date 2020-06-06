import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestcountapp/counter_model.dart';

void main() {
  group("カウンターのテスト", () {
    test("0から始まる", () {
      const CounterModel counter = CounterModel();
      expect(counter.count, 0);
      final CounterModel nextCounter = counter.increment();
      //イミュータブルなのでそのまま
      expect(counter.count, 0);
      expect(nextCounter.count, 1);
    });
    test("9から0になる。", () {
      const CounterModel counter = CounterModel(count: 9);
      final CounterModel nextCounter = counter.increment();
      expect(counter.count, 9);
      expect(nextCounter.count, 0);
    });
  });
  //todo マイナスの計算などの異常系のテストを追加していく
}
