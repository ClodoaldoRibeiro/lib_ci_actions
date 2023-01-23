class Conta {
  final int numeroConta;
  final String titular;
  double saldo = 0;

  Conta({
    required this.numeroConta,
    required this.titular,
  });

  void sacar(double valor) {
    saldo -= valor;
  }

  void depositar(double valor) {
    saldo += valor;
  }

  void tranferir(double valor) {
    saldo -= valor;
  }
}
