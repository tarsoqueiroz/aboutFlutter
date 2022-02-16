class Configuracoes {
  
  static String identificadorApp = "ADF5454SDFAGH";
  static String notificacaoSom = "sim";
  
  static void configuracaoInicial(){
    print( "Executa configuracoes iniciais" );
  }
  
}

class Conta {
  String valor;
}

void main() {
  
  //Modificadores Static e Final
  //Configuracoes config = Configuracoes();
  //Configuracoes.configuracaoInicial();
  //print( Configuracoes.notificacaoSom );
  
  final Conta conta = Conta();
  conta.valor = "Jamilton";
  
  //conta = Conta();
  
  print( conta.valor );
  
}