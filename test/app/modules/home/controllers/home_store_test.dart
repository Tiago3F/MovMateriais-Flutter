import 'package:flutter_test/flutter_test.dart';
import 'package:movmateriais/app/modules/home/controllers/home_store.dart';

void main() {
  test('Quando incrementar o contador deve sair de 0 para 1', () {
    final counter = HomeStore();

    expect(counter.value, 0);

    counter.increment();
    expect(counter.value, 1);
  });

  test('Quando decrementar o contador deve sair de 0 para -1', () {
    final counter = HomeStore();

    expect(counter.value, 0);

    counter.decrement();
    expect(counter.value, -1);
  });
}
