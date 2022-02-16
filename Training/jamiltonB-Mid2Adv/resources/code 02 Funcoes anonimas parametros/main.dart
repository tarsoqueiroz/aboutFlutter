void exibirDados(String nome, int idade, {double altura}){
  var novaAltura = altura ?? 0;
  print("nome: $nome");
  print("idade: $idade");
  print("altura: $novaAltura");
}

void calcularBonus(){
  print("seu bônus é de: 20");
}

void calcularSalario(double salario, Function funcaoParametro){
  print("Seu salário é: $salario ");
  funcaoParametro();
}

void main() {
 
  //exibirDados("Jamilton", 30, altura: 1.73 );
  calcularSalario(100, (){
    
    print("Calculo customizado");
    
  } );
  
  
}