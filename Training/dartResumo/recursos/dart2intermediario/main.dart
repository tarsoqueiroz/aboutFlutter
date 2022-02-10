/*
 String exibirDados(String nome, {int idade, double altura} ){
  int novaIdade = idade ?? 0;
  double novaAltura = altura ?? 0;
  print("Olá $nome sua idade: $novaIdade sua altura: $novaAltura ");
}


String exibirDados(String nome, Function funcao){
  print("Olá $nome");
  funcao();
}*/
/*
void calcularBonus(){
  print("Bônus calculado");
}*/
/*
class Animal {
  
  String cor;
  /*
  Animal(String cor){
    this.cor = cor;
  }
  
  Animal(this.cor);
  
  Animal.jabuti(this.cor){
    print("Construtor do Jabuti");
  }*/
  
  void dormir(){
    print("Dormir");
  }
  
}

class Cao extends Animal {
  
  String corOrelha;
  
  void latir(){
    print("Latir");
  }
  
}

class Passaro extends Animal {
  
  String corBico;
  
  void voar(){
    print("Voar");
  }
  
}
*/
class Conta {
  
  double _saque = 0;
  
  double get saque {
    //ValidaçÕes
    
    return this._saque;
  }
  
  set saque(double saque){
    
    if( saque > 0 && saque <= 500 ){
      this._saque = saque;
    }
    
  }
  
}


void main() {
  
  /* Getters/Setters
   * */
  Conta conta = Conta();
  conta.saque = 900;
  
  print( conta.saque );
  
  /* Classes, construtores e herança
   * */
  /*Cao cao = Cao();
  cao.dormir();
  cao.latir();*/
  //Animal animal = Animal("Marrom");
  //Animal animal = Animal.jabuti("Marrom");
  //animal.cor = "Marrom";
  //animal.dormir();
  //print(animal.cor);
  
	
  /* Funções, parâmetros e funções anônimas
   * */
  /*exibirDados("Jamilton", (){
    print("Bônus calculado");
  } );*/
 
  
  
  
  
  
  
}