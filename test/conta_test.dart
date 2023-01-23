import 'package:flutter_test/flutter_test.dart';
import 'package:lib_ci_actions/conta.dart';

void main() {
  test('Deve validar o saldo quando o deposito for chamado', () {
    final Conta conta = Conta(
      numeroConta: 58884,
      titular: 'André da Silva',
    );

    conta.depositar(100.00);
    expect(conta.saldo, 100.00);

    conta.depositar(50.00);
    expect(conta.saldo, 150.00);

    conta.depositar(5000.00);
    expect(conta.saldo, 5150.00);
  });

  test('Deve validar o saldo quando o saque for chamado', () {
    final Conta conta = Conta(
      numeroConta: 58884,
      titular: 'André da Silva',
    );

    conta.sacar(100.00);
    expect(conta.saldo, -100.00);

    conta.sacar(100.00);
    expect(conta.saldo, -200.00);

    conta.sacar(400.00);
    expect(conta.saldo, -600.00);
  });

  test('Deve validar o saldo quando as tranferencias forem chamadas', () {
    final Conta conta = Conta(
      numeroConta: 58884,
      titular: 'André da Silva',
    );

    conta.tranferir(2000.00);
    expect(conta.saldo, -2000.00);

    conta.tranferir(100.00);
    expect(conta.saldo, -2100.00);

    conta.tranferir(400.00);
    expect(conta.saldo, -250.00);
  });
}
