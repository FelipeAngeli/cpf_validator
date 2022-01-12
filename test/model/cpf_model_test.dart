import 'package:cpf_validator/model/cpf_model.dart';
import 'package:flutter_test/flutter_test.dart';

final meuCpf = CpfModel();
final cpfInvalido = CpfModel();

void main() {
  test('deve retornar verdadeiro', () {
    expect(meuCpf.isValid('03545535428'), true); //verificarcpf
  });
  test('deve retornar verdadeiro se o decimo digito for verdadeiro', () {
    expect(meuCpf.validate('03545535428', 9), true);
  });
  test('deve retornar verdadeiro se o decimo primeiro digito for verdadeiro',
      () {
    expect(meuCpf.validate('03545535428', 10), true);
  });

  test('deve retornar falso', () {
    expect(cpfInvalido.isValid('00114223654'), false);
  });
  test('deve retornar verdadeiro se o decimo digito for falso', () {
    expect(cpfInvalido.validate('00114223654', 9), false);
  });
  test('deve retornar verdadeiro se o decimo primeiro digito for falso', () {
    expect(cpfInvalido.validate('00114223654', 10), false);
  });
}
