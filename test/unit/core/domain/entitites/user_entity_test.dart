import 'package:flutter_test/flutter_test.dart';
import '../../../../moke/entity/user_entity_mock.dart';

main() {
  test('user_cannot_be_null.', () {
    var user = UserEntityFake.userFake();
    expect(user, isNotNull);
  });

  test('user_input_is_eing_copied', () {
    var user = UserEntityFake.userFake();
    var secondInput = UserEntityFake.copyWith(user.email, "800");

    expect(secondInput.email, equals('claudio@gmail.com'));
    expect(secondInput.senha, equals('800'));
  });
}
