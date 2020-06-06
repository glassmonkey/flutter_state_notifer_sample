import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestcountapp/counter_model.dart';
import 'package:fluttertestcountapp/counter_notifer.dart';

void main() {
  group("Count notifierのテスト", () {
    test("カウント結果が変動する", () {
      final CountNotifier countNotifier = CountNotifier();
      expect(countNotifier.debugState, const Counter(count: 0));
      countNotifier.next();
      expect(countNotifier.debugState, const Counter(count: 1));
    });
  });
}
