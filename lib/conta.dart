class Conta {
  final int numeroConta;
  final String titular;
  double _saldo = 0;

  Conta({
    required this.numeroConta,
    required this.titular,
  });

  void sacar(double valor) {
    _saldo -= valor;
  }

  void depositar(double valor) {
    _saldo += valor;
  }

  void tranferir(double valor) {
    _saldo -= valor;
  }
}
